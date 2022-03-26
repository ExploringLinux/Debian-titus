#!/bin/bash

# Change Debian to SID Branch
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/sources.list

# Add Custom Titus Rofi Deb Package
#dpkg -i 'Custom Packages/rofi_1.7.0-1_amd64.deb'

# Update packages list
apt update

# Add base packages
#apt install zip unzip picom bspwm polybar sddm rofi kitty terminator firefox thunar flameshot neofetch sxhkd git lxpolkit lxappearance xorg

### important stuff for docker
apt install -y apt-transport-https ca-certificates chromium curl firefox-esr git gnupg gnupg2 lsb-release neofetch sddm software-properties-common spice-vdagent terminator unzip zip

apt install -y qt5-style-kvantum qt5-style-kvantum-themes


curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  bullseye stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io
usermod -aG docker $USER
curl -L https://github.com/docker/compose/releases/download/1.25.3/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
#bspwm
#firefox-esr
#flameshot
#git yyyyy
#kitty xxxx
#lxappearance xxx
#lxpolkit
#neofetch yyyy
#picom
#polybar
#rofi
#sddm
#sxhkd
#terminator yyy
#thunar
#unzip yyyy
#xorg
#zip yyy
#### So this is a minimal, minimal install of kde.
apt install -y --no-install-recommends kde-plasma-desktop plasma-nm

### need a window manager
apt install kwin-x11

### need system settings and display settings
apt install systemsettings xsettingsd kscreen

### do some config with SDDM in Kde Settings
apt install kde-config-sddm kde-config-gtk-style kde-config-screenlocker

# Download Nordic Theme

#cd /usr/share/themes/
#git clone https://github.com/EliverLara/Nordic.git
