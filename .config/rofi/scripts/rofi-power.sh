#!/bin/sh

# Power menu script using tofi

CHOSEN=$(printf "lock\nreboot (restart)\nshutdown (poweroff)\nlog out" | rofi -dmenu -i -theme-str '@import "/home/breno/.config/rofi/config.rasi"')

case "$CHOSEN" in
	"lock") hyprlock ;;
	"reboot (restart)") reboot ;;
	"shutdown (poweroff)") poweroff ;;
	"log out") hyprctl dispatch exit ;;
	*) exit 1 ;;
esac
