#!/bin/bash

set -e

dir=$(pwd -P)

script_name=$(basename "$0")

if [[ "$dir" != "$HOME/dotfiles" ]]; then
	echo "Please run this from ~/dotfiles/ as ./scripts/$script_name"
	exit 1
fi

read -r -p "Choose the desired wm
1) hyprland
2) niri
3) sway
4) NONE
5) ALL
wm number: " num

if [[ $num == 1 ]]; then
	wm="hypr"
elif [[ $num == 2 ]]; then
	wm="niri"
elif [[ $num == 3 ]]; then
	wm="sway"
elif [[ $num == 4 ]]; then
	wm="NONE"
elif [[ $num == 5 ]]; then
	wm="ALL"
else
	echo "Please enter a digit from 1 to 3."
	exit 1
fi

# make sure .config exists
mkdir -p $HOME/.config

if [[ "$wm" == "ALL" ]]; then
	rm -rf "$HOME/.config/hypr"
	ln -s "$HOME/dotfiles/.config/hypr" "$HOME/.config/hypr"

	rm -rf "$HOME/.config/niri"
	ln -s "$HOME/dotfiles/.config/niri" "$HOME/.config/niri"

	rm -rf "$HOME/.config/sway"
	ln -s "$HOME/dotfiles/.config/sway" "$HOME/.config/sway"
fi

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
