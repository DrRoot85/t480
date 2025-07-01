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

echo "Automount"
sudo pacman -S udisks2 udiskie gvfs gvfs-mtp
echo "Done"

echo "All Archives"
sudo pacman -Syu zip unzip p7zip unrar zstd xz lz4 lrzip lzop gzip bzip2 tar cpio arj cabextract atool xarchiver cpio cmake meson git gcc
echo "Done"


cd Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S hyprland-git hyprpaper-git waybar-hyprland-git


sudo pacman -S wayland wayland-protocols wlroots libinput pamixer xdg-desktop-portal-wlr

sudo pacman -S foot


#in bash:
if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]]; then
  exec Hyprland
fi
