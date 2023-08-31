
## Automation using Scripts

### Why Use Scripts?

- Different programming languages available.
- Create repeatable processes.
- Consistent configuration and deployment.
- Built into most operating systems.
- Easier learning compared to a fully deployed automation platform.

### How Can Scripts Help?

- Quickly automate smaller tasks.
- Automate tasks that might not be feasible within a larger platform.
- Save time, effort, and increase productivity in managing infrastructure.

### Types of Scripts for IT Automation

1. **Task Execution**: A set of instructions or commands executed in a specific order within the environment.
2. **Configuration Modifications**: Useful for making configuration changes, even within the login process.
3. **Deployment**: Applicable to both on-premises and cloud services.

### Are Scripts IT Automation?

**Yes**:
- Easy to create.
- Used to automate less complex tasks.
- Can use powerful coding languages and commands for many UI tasks.

**No**:
- Can be slow and time-consuming.
- Maintenance of scripts can be challenging.
- Scripts are part of an overall IT automation strategy.

## Scripting to Automate Windows

- Command Prompt and batch files.
- PowerShell and script files.
- Task Scheduler and tasks.

### Automating Common Tasks

1. **Launching Multiple Applications**:
   - Batch Commands:
     ```batch
     start 1337.exe
     start chrome.exe
     ```
   - PowerShell Commands:
     ```powershell
     Start-Process "1337.exe"
     Start-Process "chrome.exe"
     ```

2. **Launching Applications as Administrator**:
   - Batch Commands:
     ```batch
     Runas /user:COMPUTER\user "C:\1337.exe"
     ```
   - PowerShell Commands:
     ```powershell
     PowerShell.exe -Command "Start-Process 'C:\1337.exe' -Verb runAs"
     ```

3. **Cleaning Up File Storage**:
   - Batch Commands:
     ```batch
     @echo off 
     forfiles /p "%USERPROFILE%\Documents" /s /m *.c /d -10 /c "cmd /c del @path"
     echo Document files older than 10 days deleted
     pause
     exit
     ```

4. **Rebooting and Shutting Down**:
   - Batch Commands:
     ```batch
     @echo off 
     :a 
     If %time%==19:00:00.00 goto :b
     goto a 
     :b
     Shutdown.exe /s /f /t 120 /c "Rebooting" 
     exit
     ```
   - PowerShell Command:
     ```powershell
     Restart-Computer -Force
     ```
5. **Backup Files and Folders**:
**Batch Commands**:

```batch
@echo off 
set sourcedir=C:\Users\USER
set targetdir=D:\Backup
Robocopy %sourcedir% %targetdir% * /e /j /r:10 /v
pause
exit
```

**PowerShell Command**:

```powershell
Wbadmin start backup -backupTarget:D: -include:c: -allCritical -quiet
```

---
This example demonstrates how to perform backup tasks using both Batch Commands and PowerShell commands. The Batch Commands utilize the `Robocopy` utility to copy files and folders from a source directory to a target directory. The PowerShell command uses `Wbadmin` to start a backup process, including critical files and the entire C: drive. This is a great addition to your content to showcase backup automation.
