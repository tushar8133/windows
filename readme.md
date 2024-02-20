# Softwares
- [WinDirStat](https://windirstat.net/wds_current_setup.exe),
- [SpaceSniffer](https://sourceforge.net/projects/spacesniffer)
- [WizTree](https://diskanalyzer.com/download)
- [WindowGrid](http://windowgrid.net)
- [WindowBlinds](https://www.stardock.com/products/windowblinds)
- [Rufus](https://rufus.ie/en/)
- [Ventoy](https://www.ventoy.net/en/download.html)
- [Balena Etcher](https://etcher.balena.io)
- [WinAero Tweaker](https://winaerotweaker.com)
- [ChrisTitusTech](https://github.com/ChrisTitusTech/winutil)
- [O&O ShutUp10](https://www.oo-software.com/en/shutup10)
- [ChoEazyCopy](https://github.com/Cinchoo/ChoEazyCopy)
- [Thorium Browser](https://github.com/Alex313031/Thorium)
- [Chrome msi](https://dl.google.com/chrome/install/googlechromestandaloneenterprise64.msi)
- [VLC ftp](http://download.videolan.org/pub/videolan/vlc/)
- [7zip](https://www.7-zip.org/download.html)
- [NanaZip](https://github.com/M2Team/NanaZip)
- [MinGit](https://github.com/git-for-windows/git/releases)
- [NodeJs FTP](https://nodejs.org/download/release)
- [Mouse Highlight](https://catnip5.itch.io/mouse-highlight)
- [Sordum](https://www.sordum.org/downloads)
- [Sordum disable SmartScreen, ZoneInfo, Streams](https://www.sordum.org/'downloads/?streams-remover)
- [Sordum disable Windows Updates](https://www.sordum.org/'downloads/?st-windows-update-blocker)
- [Sordum disable Defender](https://www.sordum.org/9480/defender-control-v2-1)

# ISO Download links
* [MVS Collection](https://isofiles.bd581e55.workers.dev)
* [TechBench by WZT](https://tb.rg-adguard.net/public.php)
* [KMS](https://github.com/abbodi1406/KMS_VL_ALL_AIO)
* [UUP Dump](https://uupdump.net)
* [RG-adguard](https://uup.rg-adguard.net)
* [LiteOS](https://winter-water-b58b.litemacos.workers.dev/0:/)

#

* `%ALLUSERSPROFILE%` - C:\ProgramData
* `%APPDATA%` - C:\Users\{username}\AppData\Roaming
* `%COMMONPROGRAMFILES%` - C:\Program Files\Common Files
* `%COMMONPROGRAMFILES(x86)%` - C:\Program Files (x86)\Common Files
* `%COMSPEC%` - C:\Windows\System32\cmd.exe
* `%HOMEDRIVE%` - C:
* `%HOMEPATH%` - C:\Users\{username}
* `%LOCALAPPDATA%` - C:\Users\{username}\AppData\Local
* `%localappdata%` C:\Users{username}\AppData\Local
* `%PROGRAMDATA%` - C:\ProgramData
* `%PROGRAMFILES%` - C:\Program Files
* `%PROGRAMFILES(X86)%` - C:\Program Files (x86) (only in 64-bit version)
* `%PUBLIC%` - C:\Users\Public
* `%SystemDrive%` - C:
* `%SystemRoot%` - C:\Windows
* `%TEMP%` - C:\Users\{username}\AppData\Local\Temp
* `%TMP%` - C:\Users\{username}\AppData\Local\Temp
* `%USERPROFILE%` - C:\Users\{username}
* `%WINDIR%` - C:\Windows
* `appdata` - C:\Users{username}\AppData
* `prefetch` - C:\Windows\Prefetch
* `recent` - C:\Users\{username}\Recent
* `temp` - C:\Temp
* `.` - C:\Users\{username}
* `calc` - Open Calculator
* `control mouse` - Open mouse settings
* `control` - Open Control Panel
* `mblctr` - Windows Mobility Center
* `msconfig`
* `msinfo32` - System Information
* `mspaint` - Paint
* `notepad` - Notepad
* `osk` - On Screen Keyboard
* `perfmon` - Performance Monitor
* `powercfg`- Power Configuration
* `psr`
* `regedit` - Registry Editor
* `resmon` - Resource Monitor
* `taskmgr`- Open Task Manager
* `DeviceEject`
* `winver` - Windows Version
* `control /name Microsoft.System` - System Info (New)
* `explorer.exe shell:::{BB06C0E4-D293-4f75-8A90-CB05B6477EEE}` - System Info (old)
* `explorer.exe shell:::{ED7BA470-8E54-465E-825C-99712043E01C}` - GOD Mode
* `devmgmt.msc` - Device Management
* `services.msc` - Open Services
* `sysdm.cpl` - System Properties
* `gpedit.msc` - Group policy editor
* `lusrmgr.msc` - Local User Manager
* `appwiz.cpl` - Uninstall Program
* `control userpasswords`
* `control userpasswords2`
* `explorer shell:AppsFolder` - All the application icons
* `shell:common startup` - startup system level
* `shell:startup` - startup user level
* `powercfg /s SCHEME_MIN` `SCHEME_MAX` `SCHEME_BALANCED` - Battery/Power
* `ms-settings:batterysaver` - Battery Power Savings Settings
* %appdata%\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\StartMenu\
* %appdata%\Roaming\Microsoft\Windows\Network Shortcuts\
* %appdata%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup



# Uninstall using Command Promt
* Open cmd with Admin rights
* Type `WMIC`
* Type `product get name`
* It will list all programs
* Suppose it has "Node.js" in the list
* Type `product where name="Node.js" call uninstall`
* Allow pressing the `Y key`
* Done

# `file.vbs` start hidden program
- `CreateObject("Wscript.Shell").Run "program.exe", 0`

# Windows Shortcuts

### Bash Exe Shortcut
* Create shortcut
* Open prperties
* Set **`Target`** - `C:\Program Files\something.exe -c "npm start; $SHELL"`
* Set **`Start In`** - `D:\MyProjects`

### Shutdown
`shutdown -r -t 0`

### Windows Install Screen
`Shift + F10` Will open command promt with X drive  
`Ctrl + Shift + F3` will open start OOBE

---

### to open `cmd` as *administrator* from `run`
Press the `Win + R` key, type `cmd`, and press `Ctrl` + `Shift` + `Enter` to run the Command Prompt as Administrator.

---

### Close Explorer.exe
Press `Shift + Ctrl` & right click on task bar, then choose "Exit Explorer"

---
### Disable signed drivers
bcdedit.exe /set nointegritychecks off

---
### Enable hibernation
```
run admin >> powercfg.exe /hibernate on
run admin >> powercfg -h -size 100%
restart
```
---
### Taskbar Location
`%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar`

---
### DIR with full paths
```
DIR [pathname(s)] [display_format] [file_attributes] [sorted] [time] [options]

dir /b /s

/S     include all subfolders.
/B     Bare format (no heading, file sizes or summary).
```

Find all files with particular extension

`dir /s /b *routing.module.ts`

---
### ATTRIB
```
ATTRIB [ + attribute | - attribute ] [pathname] [/S [/D]] [/L]

attrib -r -h -s * /d /s

/S   : Search the pathname including all subfolders.
/D   : Process folders as well
R   : Read-only
S   : System
H   : Hidden
```
---
### DEL

`DEL /f /s /q`  

```
DEL [options] [/A:file_attributes] files_to_delete

del /A:r /A:s /A:h /S /F /P

/P  Give a Yes/No Prompt before deleting. 
/F  Ignore read-only setting and delete anyway (FORCE) 
/S  Delete from all Subfolders (DELTREE)
/Q  Quiet mode, do not give a Yes/No Prompt before deleting.
/A  Attributes (below)
:R  Read-only    -R  NOT Read-only
:S  System       -S  NOT System
:H  Hidden       -H  NOT Hidden
```

---
### Icons
* `System32\SHELL32.dll`
* `System32\imageres.dll`

---

# Environment Variables
- sysdm.cpl

# Networking commands
- `netsh winsock reset` it will reset winsock
- `netsh int ip reset` bunch of system settings will reset
- `ipconfig /release` Removes the system’s current IP address.
- `ipconfig /renew` it will renew the system’s IP address
- `ipconfig /flushdns` it will flush your DNS cache
- `ping google.com` to test

