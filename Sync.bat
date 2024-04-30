::This file goes in your USB drive

:: Sets the source drive letter or path you want to backup
SET SOURCE=%CD:~0,3%
:: Sets the backup folder path
SET BACKUP=D:\Proton Drive\jacquelin.gregoire\My files\testbackup
:: You can edit the argusments of xcopy but this should only copy the difference between the source and the destination
xcopy "%source%" "%backup%" /s /c /d /e /h /i /r /y