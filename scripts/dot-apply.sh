#!/bin/bash

set -e

dir=$(pwd -P)

script_name=$(basename "$0")

if [[ "$dir" != "$HOME/dotfiles" ]]; then
	echo "Please run this from ~/dotfiles/ as ./scripts/$script_name"
	exit 1
fi

printf "Choose only one:\n1) hyprland\n2) niri\n3) sway"
read -r -p "1) hyprland\n2) niri\n3) sway\nwm number:\n" num

if [ $num == 1 ]; then
	wm="hypr"
elif [ $num == 2 ]; then
	wm="niri"
elif [ $num == 3 ]; then
	wm="sway"
else
	echo "Please enter a digit from 1 to 3."
	exit 1
fi

# make sure .config exists
mkdir -p $HOME/.config

rm -rf "$HOME/.config/$wm"
ln -s "$HOME/dotfiles/.config/$wm" "$HOME/.config/$wm"

rm -rf "$HOME/.config/tmux"
ln -s "$HOME/dotfiles/.config/tmux" "$HOME/.config/tmux"

rm -rf "$HOME/.config/rofi"
ln -s "$HOME/dotfiles/.config/rofi" "$HOME/.config/rofi"

rm -rf "$HOME/.config/nvim"
ln -s "$HOME/dotfiles/.config/nvim" "$HOME/.config/nvim"

rm -rf "$HOME/.config/ghostty"
ln -s "$HOME/dotfiles/.config/ghostty" "$HOME/.config/ghostty"

rm -rf "$HOME/.config/waybar"
ln -s "$HOME/dotfiles/.config/waybar" "$HOME/.config/waybar"

rm -rf "$HOME/.zshrc"
ln -s "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
