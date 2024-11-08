#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install -y wget curl git thunar pipx
sudo apt install -y arandr flameshot arc-theme feh i3blocks i3status i3 i3-wm lxappearance python3-pip rofi unclutter cargo compton papirus-icon-theme imagemagick
sudo apt install -y libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev autoconf meson
sudo apt install -y libxcb-render-util0-dev libxcb-shape0-dev libxcb-xfixes0-dev 
sudo apt install -y cmake g++ pkg-config libfreetype6-dev libfontconfig1-dev
###########################################################
mkdir -p ~/.local/share/fonts/

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Iosevka.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/RobotoMono.zip

unzip Iosevka.zip -d ~/.local/share/fonts/
unzip RobotoMono.zip -d ~/.local/share/fonts/

fc-cache -fv
###########################################################
#wget https://github.com/barnumbirr/alacritty-debian/releases/download/v0.10.0-rc4-1/alacritty_0.10.0-rc4-1_amd64_bullseye.deb
#sudo dpkg -i alacritty_0.10.0-rc4-1_amd64_bullseye.deb
#sudo apt install -f


#sudo cargo --root /usr/local/ alacritty

###########################################################
git clone https://www.github.com/i3/i3 i3

cd i3

sudo apt install libstartup-notification0-dev libxcb1-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-shape0-dev libxcb-util0-dev libxcb-cursor-dev libxcb-keysyms1-dev libxcb-icccm4-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libyajl-dev libpcre2-dev libcairo2-dev libpango1.0-dev libglib2.0-dev libgobject-2.0-dev libpthread-stubs0-dev libev-dev

mkdir -p build && cd build && meson setup ..
ninja
sudo ninja install
cd ../..
###########################################################
#git clone https://www.github.com/Airblader/i3 i3-gaps
#cd i3-gaps && mkdir -p build && cd build && meson ..
#ninja
#sudo ninja install
#cd ../..


pipx install pywall
#pip3 install pywal
###########################################################
mkdir -p ~/.config/i3
mkdir -p ~/.config/compton
mkdir -p ~/.config/rofi
mkdir -p ~/.config/alacritty
cp .config/i3/config ~/.config/i3/config
cp .config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
cp .config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
cp .config/compton/compton.conf ~/.config/compton/compton.conf
cp .config/rofi/config ~/.config/rofi/config
cp .fehbg ~/.fehbg
cp .config/i3/clipboard_fix.sh ~/.config/i3/clipboard_fix.sh
cp -r .wallpaper ~/.wallpaper 
echo "Done! Grab some wallpaper and run pywal -i filename to set your color scheme. To have the wallpaper set on every boot edit ~.fehbg"
echo "After reboot: Select i3 on login, run lxappearance and select arc-dark"
###########################################################
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
