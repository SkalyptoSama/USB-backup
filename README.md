# USB-backup
Windows PS Script and .bat to automatically backup a usb drive to a machine when it is inserted (based on monotone's script). Sources below.

# Set up
To set up the automatic backup download both Sync.bat and USB-backup.ps1

The batch file yould go in your usb drive and the PS script can go anywhere you want on your machine.

Then in Windows Task Scheduler, create a new task with whatever trigger you need (I use at logon).

In Actions choose "Start a program".

![image](https://github.com/SkalyptoSama/USB-backup/assets/80338702/d3eb4fcb-c074-4560-8827-4e891c85da33)




# Sources

Monotone's script can be found here : 

https://answers.microsoft.com/en-us/windows/forum/windows_vista-windows_programs/task-scheduler-how-to-automatically-synchronize-my/45a49d83-b1d8-4d37-8896-3d2696cf9795

![image](https://github.com/SkalyptoSama/USB-backup/assets/80338702/eca53007-eaa9-44fd-8cb7-033fe659321a)

![image](https://github.com/SkalyptoSama/USB-backup/assets/80338702/0acafa9a-de95-4c60-b62b-8fda995579a6)

Their work is based on these blog posts :

https://devblogs.microsoft.com/scripting/hey-scripting-guy-can-i-be-informed-when-a-portable-drive-is-added-by-my-computer/

https://devblogs.microsoft.com/scripting/hey-scripting-guy-can-i-format-a-portable-drive-when-it-is-inserted-into-a-computer/



