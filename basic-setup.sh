# Use as root
su
#Type password in

# install the git and the fakeroot enviroment
pacman -S --needed git base-devel

# git clone https://aur.archlinux.org/yay-bin.git
# Clone the yay repository and install yay packages manager
cd /opt
git clone https://aur.archlinux.org/yay-git.git
chown -R <YOUR_USER_NAME_HERE>:<YOUR_USER_NAME_HERE> ./yay-git

cd yay-git
makepkg -si

# Update  (synchronize with pacman ??) the mirror list for yay
yay -Sy
yay -Syy

yay -S $(awk '{print $1}'  usePackages.txt)

cd ~
git clone https://github.com/dungxibo123/dotfiles


cp -r dotfiles/*/*/*/* ./


