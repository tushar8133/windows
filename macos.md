# MACOS

|                                                                                                                |                                                                          |
|----------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| `shift` + `option` + `brightness/volume`                                                                       | very small shifts                                                        |
| `command` + `option` + `esc`                                                                                   | Force quit running apps                                                  |
| `command` + `shift` + `3/4/5`                                                                                  | screenshot or recording                                                  |
| `file` + `spacebar`                                                                                            | quick preview jpg/pdf                                                    |
| `command` + `tab, Q`                                                                                           | quit application                                                         |
| `command` + `spacebar`                                                                                         | spotlight (screensharing, currency/temerature conversion, calc, flights) |
| `command` + `download (on dock)`                                                                               | show downloads folder in finder                                          |
| `command` + `shift` + `.`                                                                                      | show hidden files                                                        |
| `command` + `c`                                                                                                | copy                                                                     |
| `command` + `option` + `v`                                                                                     | move                                                                     |
| `shift` + `command` + `g`                                                                                      | Goto folder (~ user folder)                                              |
| `ctrl` + `command` + `space`                                                                                   | emoticons                                                                |
| `command` + `option` + `shift` + `esc`                                                                         | quit apps one by one                                                     |
| `ctrl` + `click` + `open , on abc.app`                                                                         | allows to run without malicious warning                                  |
| `defaults write com.apple.desktopservices DSDontWriteNetworkStores true`                                       | DS_Store                                                                 |
| hover on maximize button                                                                                       | split screen                                                             |
| right click on speaker icon next to search bar                                                                 | picture in picture                                                       |
| bluetooth off on lid down                                                                                      | https://github.com/alb12-la/KBOS                                         |
| startup hidden items location                                                                                  | /Users/tusharkumar/Library/LaunchAgents/                                 |
| copy full path                                                                                                 | right click and open context menu, now press OPTION key                  |
| Youtube Downloader                                                                                             | https://github.com/section83/MacYTDL                                     |
| open pkg file                                                                                                  | pkgutil --expand ./filename ./outputfolder                               |

## Remove Leftover "Context Menu" of Uninstalled Apps
* Keyboard > Shortcuts > Services
* ~/Library/Services
* Open that app > In the dock select Show in Finder > Delete that app >  Related context Items will be removed


## Remove hidden attribute from file or app

```
xattr -d com.apple.FinderInfo <filename>
xattr -px com.apple.FinderInfo
xattr -c
xattr -cr <folder>

getfileinfo <file/folder>
setfile -a V
aVbstclinmEdz

chflags -R nohidden <foldername>
chflags nohidden <filename>

Finder >> go back and forward to refresh

man chflags
man xattr
```

## Create FTP for file transfer

```
sudo -s launchctl load -w /System/Library/LaunchDaemons/ftp.plist

Enter password

Press 'option' + click 'Wifi' icon - to check IP address
```

## Hosts File Permission
```
sudo chflags uchg /etc/hosts
sudo chflags schg /etc/hosts

sudo chflags nouchg /etc/hosts
sudo chflags noschg /etc/hosts
```
