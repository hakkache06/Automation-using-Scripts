# IT Automation using Scripts

IT automation involves replacing manual tasks with automated processes. This eliminates manual steps by employing software and applications to streamline existing tasks.

## Why Use Scripts?

- Different programming languages are available.
- Creation of repeatable processes.
- Ensures consistent configuration and deployment.
- Scripts are built into most operating systems.
- Easier to learn compared to fully deployed automation platforms.

## How Can Scripts Help?

- Quick automation of smaller tasks.
- Automation of tasks not feasible within larger platforms.
- Time and effort saving, leading to increased infrastructure management productivity.

## Types of Automation Scripts

1. **Task Execution:** A set of ordered instructions or commands for performing actions within an environment.
2. **Configuration Modifications:** Modify configurations, such as Windows settings, using locally executed or login process-integrated scripts.
3. **Deployment:** Applied to both on-premises and cloud services.

## Are Scripts IT Automation?

**Yes:**
- Ease of creation for scripting.
- Can automate less complex tasks.
- Utilizes powerful coding languages and commands for UI tasks.

**No:**
- Scripting can be slow and time-consuming.
- Maintenance of scripts can be challenging.
- Scripts are part of an overall IT automation strategy.

## Scripting for Windows Automation

- Command Prompt and batch files.
- PowerShell and script files.
- Task Scheduler and tasks.

## Automating Common Tasks

- Launching multiple applications.
- Starting applications as an administrator.
- Cleaning file storage.
- Restarting and shutting down the operating system.
- Backup of files and folders.

## Example 1: Launching Multiple Applications

### Batch Command
```batch
start 1337.exe
start chrome.exe
```

### PowerShell Command
```powershell
Start-Process "1337.exe"
Start-Process "chrome.exe"
```

## Example 2: Launching Applications as Administrator

### Batch Command
```batch
Runas /user:COMPUTER\user "C:\1337.exe"
```

### PowerShell Command
```powershell
Start-Process "C:\1337.exe" -Verb runAs
```

## Example 3: Cleaning Up File Storage

### Batch Command
```batch
@echo off
forfiles /p "%USERPROFILE%\Documents" /s /m *.c /d -10 /c "cmd /c del @path"
echo Document files older than 10 days deleted
pause
exit
```

## Example 4: Rebooting and Shutting Down

### Batch Command
```batch
@echo off
:a
If %time%==19:00:00.00 goto :b
goto a
:b
Shutdown.exe /s /f /t 120 /c "Rebooting"
exit
```

### PowerShell Command
```powershell
Restart-Computer -Force
```

## Example 5: Backup Files and Folders

### Batch Command
```batch
@echo off
set sourcedir=C:\Users\USER
set targetdir=D:\Backup
Robocopy %sourcedir% %targetdir% * /e /j /r:10 /v
pause
exit
```

### PowerShell Command
```powershell
Wbadmin start backup -backupTarget:D: -include:c: -allCritical -quiet
```

## Scripting for Linux Automation

- Bash and shell scripts.
- Python scripts.
- Cron jobs and AT services.

## Automating Common Tasks

- Launching multiple applications.
- Cleaning file storage.
- Backup of files and folders.

## Example 1: Launching Multiple Applications

### Bash Command
```bash
#!/bin/bash
/usr/bin/firefox &
/usr/bin/chrome &
/usr/bin/Discord &
exit 0
```

### Python Command
```python
import os
os.system("firefox")
os.system("chrome")
os.system("discord")
```

## Example 2: Cleaning Up File Storage

### Bash Command
```bash
#!/bin/bash
find /home/user/Documents -mtime +10 -type f -delete
```

### Python Command
```python
import os
import time

path = '/home/user/Documents'
files = os.listdir(path)

now = time.time()
n_days = n * 86400

for f in files:
    filepath = os.path.join(path, f)
    if not os.path.isfile(path):
        continue
    if os.stat(filepath).st_mtime < now - n_days:
        os.remove(filepath)
```

## Example 3: Backup Files and Folders

### Bash Command
```bash
#!/bin/bash
tar -cvf /home/Backup.tar /home/user/Documents
```

### Python Command
```python
import os
import time

source = '/home/user/Documents'
targetdir = '/home/Backup/'

target = targetdir + time.strftime('%Y%m%d%H%M%S') + '.zip'
zip = "zip -qr '%s' %s" % (target, ' '.join(source))
os.system(zip)
```

Replace placeholders in the examples with your actual commands, paths, and configurations to effectively showcase your project's scripting automation capabilities.
