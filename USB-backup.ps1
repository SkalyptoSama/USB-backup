#Requires -version 2.0
Register-WmiEvent -Class win32_VolumeChangeEvent -SourceIdentifier volumeChange
write-host (get-date -format s) " Beginning script..."
do
{
    $newEvent = Wait-Event -SourceIdentifier volumeChange
    $eventType = $newEvent.SourceEventArgs.NewEvent.EventType
    $eventTypeName = switch($eventType)
        {
            1 {"Configuration changed"}
            2 {"Device arrival"}
            3 {"Device removal"}
            4 {"docking"}
        }
    write-host (get-date -format s) " Event detected = " $eventTypeName
    if ($eventType -eq 2)
        {
            $driveLetter = $newEvent.SourceEventArgs.NewEvent.DriveName
            $driveLabel = ([wmi]"Win32_LogicalDisk='$driveLetter'").VolumeName
            write-host (get-date -format s) " Drive name = " $driveLetter
            write-host (get-date -format s) " Drive label = " $driveLabel
            # Execute process if drive matches specified condition(s)
            # Replace 'Mirror' by your drive name
            # You can also add $driveLetter -eq 'Z:' as a condition to also check for drive letter
            if ($driveLabel -eq 'Mirror')
                {
                write-host (get-date -format s) " Starting task in 3 seconds..."
                start-sleep -seconds 3
                # Here you can adjust the path to the bat file located in the USB drive
                start-process "${driveLetter}\Sync.bat"
                }
        }
    Remove-Event -SourceIdentifier volumeChange
} 
while (1-eq1) #Loop until next event
Unregister-Event -SourceIdentifier volumeChange