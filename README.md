# Arch Linux 
![Arch](https://img.shields.io/badge/Arch%20Linux-1793D1?logo=arch-linux&logoColor=fff&style=for-the-badge) ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
## My resuable dotfiles


* .zshrc contain zsh configuration ![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
* .oh-my-zsh contain my custom themes ![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
* .config contain the configuration of packages
  * [lf](https://github.com/gokcehan/lf) 
  * [i3](https://github.com/Airblader/i3)
  * [polybar](https://github.com/polybar/polybar)
  * [picom](https://github.com/yshui/picom)
  * [alacritty](https://github.com/alacritty/alacritty)
  * [mpd & ncmpcpp & mpc](https://www.musicpd.org/)
  * [btop](https://github.com/aristocratos/btop)
  * [nvim](https://github.com/neovim/neovim)
* .xinitrc & .Xauthority contain configuration for the [Xorg](https://github.com/freedesktop/xorg-xserver)


```bash

#Note: below content is the basic-setup.sh file
#@author: Dung T. Vo
#@time: 01/03/2022


# Use as root
su
#Type password in

# install the git and the fakeroot enviroment
pacman -S --needed git base-devel

# Clone the yay repository and install yay packages manager
# git clone https://aur.archlinux.org/yay-bin.git
cd /opt
git clone https://aur.archlinux.org/yay-git.git
chown -R <YOUR_USER_NAME_HERE>:<YOUR_USER_NAME_HERE> ./yay-git

cd yay-git
makepkg -si

# Update  (synchronize with pacman ??) the mirror list for yay
yay -Sy
yay -Syy

yay -S $(awk '{print $1}'  usePackages.txt)
```
