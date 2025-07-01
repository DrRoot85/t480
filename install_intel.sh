#/bin/env bash

sudo pacman -Syu intel-ucode xf86-video-intel mesa libva-intel-driver libvdpau-va-gl vulkan-intel

sudo pacman -Syu xorg-server xorg-xinit xorg-apps xorg-xrandr xorg-xinput xf86-video-intel mesa


sudo pacman -S ttf-dejavu xclip xterm
