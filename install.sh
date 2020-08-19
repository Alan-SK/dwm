#!/bin/bash
if [ -f "/bin/alacritty" ]; then
	echo "检测到您安装了alacritty,正在为您配置"
	mkdir ~/.config/alacritty
	cp ./config/alacritty.yml ~/.config/alacritty/
	sudo make
	sudo make install
	sudo pacman -S xorg-apps xorg-xinit xorg-server chromium
	echo "exec dwm" > ~/.xinitrc
	echo "配置完成！"
else
	echo "检测到您没有安装alacritty,正在为您配置安装"
	sudo pacman -S alacritty
	cp ./config/alacritty.yml ~/.config/alacritty/
	sudo make
	sudo make install
	sudo pacman -S xorg-apps xorg-xinit xorg-server chromium
	echo "exec dwm" > ~/.xinitrc
	echo "安装配置完成!"
fi
