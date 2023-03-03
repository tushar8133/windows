# Linux

## Desktop Environments
- UNITY
- GNOME
- Cinnamon
- MATE
- KDE
- XFCE
- LXDE

## Display Render
- Wayland
- Xorg / X11

## Display Manager / Login Manager
- sddm (qt5)(KDE)
- gdm (gnome)
- lxdm (lxde)
- LightDM (All)

## Window Manager
- bspwm
- i3
- dwm
- iwm
- icewm

## Start Menu
- rofi
- dmenu

## Bar
- polybar
- slstatus

## File Browser
- Thunar
- Dolphin
- pcmanfm

## Terminal
- kitty
- rxvt-unicode
- terminator
- konsole

## Shell: Command Line Interpreters
- bash
- tcsh
- zsh

## Editor
- vi
- vim
- neovim
- atom
- dconf-editor
- nano
- code
- vscodium
- gedit

## Bootloader
- GRUB

## Boot Manager
- rEFInd (UEFI)

## Hotkeys
- sxhkd

## Display opacity
- picom

## Backgrounds
- nitrogen
- feh

## Graphics, Games, FPS
- MongoHud

## URL
- ocs

## Resolution
- arandr
- xrandr

## Browser
- firefox
- brave
- chromium

## OS Info
- neofetch

## process viewer
- htop

## Fonts
- fontawesome-fonts
- fontawesome-fonts-web
- ttf-incosolata
- https://www.nerdfonts.com

## Theme
- Nordic

## Screenshot
- flameshot

## Wifi Drivers
- sudo dnf install NetworkManager-wifi

## Websites
- https://suckless.org
- https://distrowatch.com
- https://www.reddit.com/r/unixporn

## Unknown
- lxpolkit
- Xcfgs
- lxappearacne

# ??
- GTK+
- QT

## Installers
- snap
- flatpack

## Packages Types
- Debian
    - `apt-get` `apt-cache` old
    - `apt` new
    - `dpkg -i package.deb` Package Manger & package
- Fedora/Suse
    - `yum` older
    - `dnf` new
    - `rpm -i package.rpm` Package Manger & package
- Arch
    - `pacman`
    - `pacman -Qi package.pkg[.tar|.zst|.gz|.xz]` Alpm Package
    - AUR
        - Arch User Repository
        ```
        git clone https://aur.archlinux.org/brave.git
        cd brave/
        ```
        - Package Compiler
        ```
        makepkg -si
        ```
        - Package Installer
        ```
        yay -S brave
        ```

## Distros
- Puppy Linux
- Gentoo
- Tiny Core
- Solus
- Slackware
- Fedora
    - Amazon Linux 2
    - RedHat
        - OracleLinux
        - CentOS
            - ClearOS
- Suse
    - SLES (Suse Linux Enterprise Server)
        - OpenSuse
- ArchLinux
    - EndeavourOS
    - Manjaro
    - Garuda
- Debian
    - MX Linux (Stable), antiX
    - Deepin (Stable)
    - antiX
    - Kali
    - Ubuntu (Unity)
        - Kubuntu (KDE plazma)
        - Lubuntu (LXDE)
        - Xubuntu (XFCE)
        - Ubuntu Gnome (Gnome3)
        - Ubuntu Mate (Gnome2)
        - Bodhi Linux
        - Mint
        - Pop!_OS
        - Zorin
        - Elementary


# System Commands
```
sudo dnf update
sudo dnf install git sddm bspwm sxhkd kitty rofi polybar picom thunar nitrogen lxpolkit ocs fonts Xcfgs mongohud vim lxappearacne
sudo systemctl enable sddm
sudo systemctl set-default graphical.target
reboot
```
```
/etc/sddm.conf >>
Autologin
Session=bspwm
User=titus

/etc/sddm/Xsetup >>
```
## USERS
- `passwd [tushar]`
- `adduser tushar`
- `useradd -mg wheel tushar` (m) setup home directory, (g) add to group

## Switch User
- `su sudo` switch to ROOT user
- `sudo su` switch to ROOT user
- `su tushar` switch back to normal user
- `su - tushar` switch back to normal user with fresh state

## Remove SUDO permissions

Goto file `/etc/sudoers.d`

Uncomment these lines

- `root ALL=(ALL) ALL`
- `%wheel ALL=(ALL) ALL`
- `%wheel ALL=(ALL) ALL NOPASSWD: ALL`
- `%sudo ALL=(ALL) ALL`

Add this line
- `Defaults !tty_tickets`

## SHUTDOWN
- `poweroff`
- `shutdown now`

## REBOOT
- `reboot`
- `shutdown -r now`

## Install/Uninstall
- Fedora
    - `sudo fnd install neofetch`
    - `sudo fnd remove neofetch`
- Arch
    - `pacman -S neofetch`

- Debian
    - `sudo apt install neofetch`

## Check install packages

- `dnf history userinstalled` return only user installed
- `dnf list installed` return all
- `yum list installed` return all
- `rpm -qa` return all
- `dnf autoremove` remove orphan packages
- `pkcon search name neofetch` search packages

## Graphical

login as a user and create a file `~/.xinitrc`

open it and write

`exec dwm` for dwm

or

`exec xfce4-session` for xfce

Now in terminal, do `xstart` command and it will start the related program

## Remove LoginManager and install your WM

[Youtube link](https://www.youtube.com/watch?v=ut72fRROT30)

Install `dwm` and `xinit` on top on existing WM, Now if you open DWM, by just typing `dwm` from terminal, but you will get this error saying "Another WM is already running", so you need to kill your WM. You can do it by pressing `ctrl + alt + backspace` or `ctrl + alt + F1` to get to TTY screen, then enter credentials and open `~/.xinitrc` file or create it if not present. Then write these below lines -

```
exec dwm &
xrdb ~/.Xresources &
exec slstatus
xrandr -s 1920x1080 #not the correct way, should be done using X something...
```

install `xinit` (already done in previous steps) and run `startx` to start the configured WM, instead of LoginManager running your WM


## 


---


| COMMANDS | DESCRIPTIN |
|-|-|
| `man` | manual |
| `curl` | |
| `ln` | |
| `alias` | |
| `chmod` | |
| `sort -k2 test.txt` | |
| `echo` | |
| `find -name test.txt` | for finding files |
| `find / -name test.txt` | for finding files and folders |
| `diff test1.txt test2.txt` | |
| `uniq test.txt` | to find only unique lines |
| `history` | |
| `touch hello.txt` | create a file |
| `# ls` | list command |
| `ls -ltr` | |
| `ls -a` | list folders starting with . |
| `ls -l` | show list in detail |
| `ls -al` | `-a` & `-l` combined || cd | `cd myfolder` | Change Directory |
| `ll` | similar to `ls -l` || mv | `mv ~/file.txt ~/folder` | Move Files |
| `mv file1.txt file2.txt` | Rename Files |
| `cp file1.txt ~/folder` | copy files |
| `mkdir myfolder` | make directory |
| `rmdir folder1` | remove directory and files within |
| `rm test.txt` | remove files |
| `locate -i redhouse**city*` | search in whole OS |
| `pwd` | present working directory |
| `whoami` | username |
| `cat` | |
| `clear` | clear console |
| `\| more`| |
| `dmesg`| for kernel logs |


## grep
`grep -in "my-regex-here" filename.txt`

`i` IgnoreCase  
`n` LineNumber  
`r` Recursive  
`l` ListFilenamesOnly  

* `grep "my-regex-here" filename.txt` single file
* `grep "my-regex-here" *` all files in current directory
* `grep -r "my-regex-here" ./dir1` recursive search inside directory
* `grep -r "my-regex-here" ./dir1 ./dir2 ./dir3` recursive search inside multiple directories
* `grep -r "my-regex-here" ./dir1 > output.txt` print result in separate file

It can be combined with other commands, like `ls | grep "html"`

