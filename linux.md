- [Commands](#section-2)
- [Archive Compression formats](#archive-compression-formats)



# Linux

## Bootloader
- GRUB

## Boot Manager
- rEFInd (UEFI)

## Display Render / Display Server
- Xorg / X11
    - `sudo pacman -S xorg-server xorg-apps xorg-xinit xclip xdotool xterm`
- Wayland

## Graphics Driver (Optional)
- NVidia
- Intel
- AMD/ATI
- `pacman -Ss xf86-video` Search Drivers
- `sudo pacman -S spice-vdagent xf86-video-qxl` SPICE Tools

## Desktop Environments
- UNITY
- GNOME
- Cinnamon
- MATE
- KDE
- XFCE
- LXDE

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

## Screen Resolution
- arandr
- xrandr

## Browser
- firefox
- brave
- chromium

## OS Info
- neofetch

## Process Viewer
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
- `sudo dnf install NetworkManager-wifi`



## Unknown
- lxpolkit
- Xcfgs
- lxappearacne

# ??
- GTK+
- QT

## Packages Types
- Debian
    - `apt-get` `apt-cache` old
    - `apt` new (combined old ones)
    - `dpkg -i package.deb` Package and Installer
- Fedora/Suse
    - `yum` older
    - `dnf` new
    - `rpm -i package.rpm` Package and Installer
- Arch
    - `pacman`
    - `pacman -Qi package.pkg[.tar|.zst|.gz|.xz]` Alpm Package (usually not found)
    - AUR (Arch User Repository)
        - `git clone https://aur.archlinux.org/brave.git` **&** `cd brave/`
        - `makepkg -si` Package Compiler
        - `yay -S brave` Package Installer
        - OR
        - `git clone git://git.suckless.org/dwm` **&** `cd dwm`
        - `pacman -Sy base-devel`
        - `$ make`
        - `# make install` or `make clean install`
- Snap (Ubuntu, Manjaro)
- Flatpack (Only graphics application)
- AppImage

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
- [ArchLinux](https://pkgbuild.com/~tpowa/archboot/iso/aarch64/latest)
    - EndeavourOS
    - Manjaro
    - Garuda
- Debian
    - MX Linux (Stable)
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


# System Update
- `sudo dnf update`
- `sudo pacman -Syu`

## Add Users
- `useradd -m -g users -G wheel,storage,power,video,audio tushar` (m) setup home directory, (g) add to group
- `passwd [tushar]`

## Switch User
- `su` or `sudo su` switch to ROOT user
- `su -` switch back to ROOT user with old history
- `su tushar` switch back to normal user with fresh state
- `su - tushar` switch back to normal user with old history

## Remove SUDO permissions
- `pacman -S sudo` install sudo as a root user  
   and write `visudo`  
   or `EDITOR=nano visudo` to open with specific editor
- `sudo vim /etc/sudoers`
```shell
# Uncomment these lines
root ALL=(ALL) ALL
%wheel ALL=(ALL) ALL
%wheel ALL=(ALL) ALL NOPASSWD: ALL
%sudo ALL=(ALL) ALL
# Add this line
Defaults !tty_tickets
```

## Pacman Stuff
- `sudo nano /etc/pacman.conf`
- `ParallelDownloads=5`

## Create User Directories
- `sudo pacman -Sy xdg-user-dirs`
- `xdg-user-dirs-update`

## Shutdown
- `poweroff`
- `shutdown now`

## Reboot
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

## Check Installed Packages
- `dnf history userinstalled` return only user installed
- `dnf list installed` return all
- `yum list installed` return all
- `rpm -qa` return all
- `dnf autoremove` remove orphan packages
- `pkcon search name neofetch` search packages

## `.xinitrc`

login as a NORMAL user

`sudo nano /etc/X11/xinit/.xinitrc` global file

`sudo nano ~/.xinitrc` local file

`exec dwm` for dwm

`exec xfce4-session` for xfce

`startx` will start the Xorg server and run your configured apps 

```
sudo dnf update
sudo dnf install git sddm bspwm sxhkd kitty rofi polybar picom thunar nitrogen lxpolkit ocs fonts Xcfgs mongohud vim lxappearacne
```

## `sddm`

`sudo systemctl enable sddm`

`sudo systemctl set-default graphical.target`

`/etc/sddm.conf`

```
Autologin
Session=bspwm
User=titus
```

`/etc/sddm/Xsetup`

## Remove LoginManager and install your WM

[Youtube link](https://www.youtube.com/watch?v=ut72fRROT30)

Install `dwm` and `xinit` on top on existing WM, Now if you open DWM, by just typing `dwm` from terminal, but you will get this error saying "Another WM is already running", so you need to kill your WM. You can do it by pressing `ctrl + alt + backspace` or `ctrl + alt + F1` to get to TTY screen, then enter credentials and open `~/.xinitrc` file or create it if not present. Then write these below lines -

```
exec dwm &
xrdb ~/.Xresources &
exec slstatus
xrandr -s 1920x1080 #not the correct way, should be done using startx command
```

install `xinit` (already done in previous steps) and run `startx` to start the configured WM, instead of LoginManager running your WM


---

# Section 2


| COMMANDS | DESCRIPTIN |
|-|-|
| `man` | read manual |
| `curl` | |
| `ln` | |
| `alias` | |
| `sort -k2 test.txt` | |
| `echo hahaha` | display text in console, from a console |
| `echo hahaha > file.txt` | overwrite text to a file |
| `echo hahaha >> file.txt` | append the text to the file |
| `cat A.txt` | display text in console, from a file |
| `cat A.txt B.txt`  | combine text from multiple file in console |
| `cat A.txt B.txt > C.txt`  | combine text from multiple file and write to a file |
| `cat > A.txt` <kbd>↵</kbd> hahaha <kbd>^</kbd>+<kbd>d</kbd> | write some text on terminal and create a file |
| `cat <<EOL>> A.txt` <kbd>↵</kbd> hahaha <kbd>↵</kbd> `EOL` <kbd>↵</kbd> | append text to file |
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
| `rm -rf foldername` | remove folder with files (`-r` recursive, `-f` force) |
| `locate -i redhouse**city*` | search in whole OS |
| `pwd` | present working directory |
| `whoami` | username |
| `clear` | clear console |
| `dmesg`| for kernel logs |
| `more` | page by page increment order |
| `less` | page by page decrement order |
| `some_command_output \| more`| combine with other commands also |

# chmod
||User|Group|Other|
|-:|:-:|:-:|:-:|
|__Read__|4|2|1|
|__Write__|4|2|1|
|__Execute__|4|2|1|

#### permission
- `r` Read
- `w` Write
- `x` Execute
- `-` No Permission

#### who
- `u` User
- `g` Group
- `o` Other
- `a` All (same as `ugo`)

#### operators
- `=` set
- `+` add
- `-` remove

```
$ chmod 777 filename
$ chmod u=rwx,g=rwx,o=rwx filename
$ chmod a=rwx filename
```

```
$ chmod 664 filename
$ chmod u=rw,g=rw,o=r filename
$ chmod a+rwx,u-x,g-x,o-wx filename
```

Folder `-R` for recursive
```
$ chmod -R 777 foldername
```


# `grep`
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


---


# Archive Compression formats
- `tar` archive format (does not compress)
- `gzip` low compression
- `bzip2` medium compression
- `xz` high compression

# Compress single file
- `zip video.mp4`
- `gzip video.mp4`
- `bzip2 video.mp4`

# Extract
- `unzip archive.zip`
- `gunzip archive.gzip`
- `bunzip2 archive.bz2`
- `gunzip archive.xz`


# Archive & Compression Extensions
- `.gz` (gzip) _[DEFLATE]_
- `.bz` (bzip)
- `.bz2` (bzip2) _[Burrows–Wheeler]_
- `.xz` (xz) _[LZMA]_
- `.tar` (tar)
- `.tar.gz` (tar + gzip)
- `.tar.bz` (tar + bzip)
- `.tar.bz2` (tar + bzip2)
- `.tar.xz` (tar + xz)
- `.tgz` (tar + gzip)
- `.tbz` (tar + bzip)
- `.tbz2` (tar + bzip2)
- `.txz` (tar + xz)


# `tar -options`
- `tar -c` : Creates Archive 
- `tar -x` : Extract the archive 
- `tar -v` : Displays Verbose Information 
- `tar -f` : creates archive with given filename 
- `tar -t` : displays or lists files in archived file 
- `tar -u` : archives and adds to an existing archive file 
- `tar -A` : Concatenates the archive files 
- `tar -W` : Verify a archive file 
- `tar -r` : update or add file or directory in already existed .tar file 
- `tar -z` : gzip
- `tar -j` : bzip2
- `tar -J` : xz

# Examples

- __Create archive without compression__
	- `tar -cvf archive.tar /myfolder/A`

- __Create archive of only `.txt` files__
	- `tar -cvf archive.tar *.txt`

- __Create gzip archive from multiple paths, excluding specifics__
	- `tar -czvf archive.tar.gz /myfolder/A /myfolder/B /myfolder/C --exclude=/myfolder/A/temp --exclude=*.mp4`

- __Extract `.tar` archive__
	- `tar -xvf archive.tar -C /pathtoextract`

- __Extract `.tar.gz` archive__
	- `tar -xzvf archive.tar.gz -C /pathtoextract`

- __Extract `.tar.bz2` archive__
	- `tar -xjvf archive.tar.bz2 -C /pathtoextract`


---


# Websites
- https://suckless.org
- https://distrowatch.com
- https://www.reddit.com/r/unixporn
- https://github.com/3rfaan/dotfiles
- https://github.com/daimaou92/install-arch-vmwarefusion-techpreview
