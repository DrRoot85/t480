#/bin/env bash

echo "Installing Intel"
sudo pacman -Syu intel-ucode xf86-video-intel mesa libva-intel-driver libvdpau-va-gl vulkan-intel
echo "Done"

echo "Installing Xorg"
sudo pacman -Syu xorg-server xorg-xinit xorg-apps xorg-xrandr xorg-xinput xf86-video-intel mesa
echo "Done"

echo "Fonts 1"
sudo pacman -S ttf-dejavu xclip xterm
echo "Done"

echo "Fonts 2"
sudo pacman -Syu ttf-dejavu ttf-liberation noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-droid ttf-roboto ttf-opensans
echo "Done"

echo "Fonts 3"
sudo pacman -S ttf-fira-code ttf-jetbrains-mono ttf-cascadia-code
echo "Done"
