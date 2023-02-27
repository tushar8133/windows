# Linux

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

## File Browser
- Thunar
- Dolphin

## Terminal
- Kitty

## Shell: Command Line Interpreters
- bash
- tcsh
- zsh

## Editor
- Vim
- NeoVim
- Atom
- dconf-editor

## Bootloader
- GRUB

## Boot Manager
- rEFInd (UEFI)

# ??
- GTK+
- QT

## Packages Types
- RPM Based
    - OpenSuse
    - Fedora
        - RHEL
- Pacman
    - Arch
- Debian
    - Ubuntu


# COMMANDS

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
