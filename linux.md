# Linux

## Desktop Environments -  (Lightweight in descending order, not correct)
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

## Desktop Manager (Login)
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
- Kitty
- rxvt-unicode
- terminator

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

## Graphics, Games, FPS
- MongoHud

## URL
- ocs

## Resolution
- arandr
- xrandr

## Browser
- firefox

## OS Info
- neofetch

## process viewer
htop

## Fonts
- fontawesome-fonts
- fontawesome-fonts-web
- ttf-incosolata

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
- RPM Based
    - OpenSuse
    - Fedora
        - RHEL
- Pacman
    - Arch
- Debian
    - Ubuntu

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

## Switch to ROOT user

`sudo su`

## Remove SUDO permissions

Goto file `/etc/sudoers.d`

Uncomment these lines

- `root ALL=(ALL) ALL`
- `%wheel ALL=(ALL) ALL`
- `%wheel ALL=(ALL) ALL NOPASSWD: ALL`
- `%sudo ALL=(ALL) ALL`

Add this line
- `Defaults !tty_tickets`

## SHUTDOWN and REBOOT
```
shutdown -r now
poweroff
reboot
```

## Install/Uninstall
- Fedora
    - `sudo fnd install neofetch`
    - `sudo fnd remove neofetch`
- Arch
    - `pacman -S neofetch`

- Debian
    - `sudo apt-get install neofetch`


## VIM commond commands

`:wq!` (write, quit, force)

## Graphical

login as a user and create a file `~/.xinitrc`

open it and write

`exec dwm` for dwm

or

`exec xfce4-session` for xfce

Now in terminal, do `xstart` command and it will start the related program

## List Hidden Files/Folders

`ls -a`

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


# Utility Commands

* tail -n 100 /var/log/mail.log | more
* cat /var/log/mail.log
* less /var/log/mail.log === press [/] then enter your search and press [enter]
* dmesg (for kernel logs)

## grep
`grep -in "my-regex-here" filename.txt`

i=IgnoreCase  
n=LineNumber  
r=Recursive  
l=ListFilenamesOnly  

* `grep "my-regex-here" filename.txt` single file
* `grep "my-regex-here" *` all files in current directory
* `grep -r "my-regex-here" ./dir1` recursive search inside directory
* `grep -r "my-regex-here" ./dir1 ./dir2 ./dir3` recursive search inside multiple directories
* `grep -r "my-regex-here" ./dir1 > output.txt` print result in separate file

can be combined with different commands like
`ls | grep "html"`


---

* man (to find any command)
* curl
* ln
* ls -ltr
* alias
* chmod
* sort -k2 test.txt
* touch hello.txt
* echo
* find -name test.txt === for finding files
* find / -name test.txt === for finding files and folders
* diff test1.txt test2.txt
* uniq test.txt === to find only unique lines
* history

---

* cd === change directory
* mv === move files
* cp === copy files
* ls === list command
* mkdir === make directory
* rmdir folder1 === remove directory and files within
* rm test.txt === remove files
* touch === create files
* clear
* locate -i *red*house**city* === search in whole OS
* pwd === present working directory

---

* `[q]` to quit.
* `[/]` “text” and [enter] to search a pattern.
* `[G]` to go to the end of the file.
* `[gg]` to go to begining of the file.
