# USB-backup
Windows PS Script and .bat to automatically backup a usb drive to a machine when it is inserted (based on monotone's script). Sources below.



# Set up
To set up the automatic backup download Sync.bat, USB-backup.ps1 and USB-backup.xml

The batch file should go at the root your usb drive and the PS script can go anywhere you want on your machine.

Open Sync.bat with a text editor and change the backup folder path.

![image](https://github.com/SkalyptoSama/USB-backup/assets/80338702/ff15f4e0-770a-42d1-a01d-bfe226e5530c)

Same with USB-backup.ps1 and change 'Mirror' to your drive name.

![image](https://github.com/SkalyptoSama/USB-backup/assets/80338702/2da80e90-877d-4db8-b2fa-2875dd22b6d9)

Then in Windows Task Scheduler, select import task and open USB-backup.xml

Go to 'Actions' and 'Modify' and in the 'Arguments' delete whats after -File and enter the full path to USB-backup.ps1 

![image](https://github.com/SkalyptoSama/USB-backup/assets/80338702/c572b295-88b2-499e-ac4a-830d8c88f1c5)

You can also remove -WindowStyle Hidden if you want to see the powershell window.

![image](https://github.com/SkalyptoSama/USB-backup/assets/80338702/2ec4b43f-8d98-4de9-b6ee-5635ee42c0c6)

The -ExecutionPolicy Bypass argument allows the script to run



# Sources

Monotone's script can be found here : 

https://answers.microsoft.com/en-us/windows/forum/windows_vista-windows_programs/task-scheduler-how-to-automatically-synchronize-my/45a49d83-b1d8-4d37-8896-3d2696cf9795

![image](https://github.com/SkalyptoSama/USB-backup/assets/80338702/eca53007-eaa9-44fd-8cb7-033fe659321a)

![image](https://github.com/SkalyptoSama/USB-backup/assets/80338702/0acafa9a-de95-4c60-b62b-8fda995579a6)

Their work is based on these blog posts :

https://devblogs.microsoft.com/scripting/hey-scripting-guy-can-i-be-informed-when-a-portable-drive-is-added-by-my-computer/

https://devblogs.microsoft.com/scripting/hey-scripting-guy-can-i-format-a-portable-drive-when-it-is-inserted-into-a-computer/



