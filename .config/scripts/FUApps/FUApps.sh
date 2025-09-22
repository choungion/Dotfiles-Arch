#!/usr/bin/env bash

# Current Theme
dir="~/.config/scripts/FUApps"
theme='style'

# Options
VSCode='󰨞 VS Code'
Discord='󰙯 Discord'
Whatsapp=' Whatsapp'
Spotify=' Spotify'
Thunar=' Thunar'

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-theme ${dir}/${theme}.rasi
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$VSCode\n$Discord\n$Whatsapp\n$Spotify\n$Thunar" | rofi_cmd
}

# Execute Command
run_cmd() {
	selected="$(confirm_exit)"
	if [[ "$selected" == "$yes" ]]; then
		if [[ $1 == '--VSCode' ]]; then
			code
		elif [[ $1 == '--Discord' ]]; then
			webcord
		elif [[ $1 == '--Whatsapp' ]]; then
			whatsdesk
		elif [[ $1 == '--Spotify' ]]; then
			spotify-launcher
		elif [[ $1 == '--Thunar'  ]]; then
			thunar		
		fi	
	else
		exit 0
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $VSCode)
		run_cmd --VSCode
        ;;
    $Discord)
		run_cmd --discord
        ;;
    $Whatsapp)
		run_cmd --Whatsapp
	;;
    $Spotify)
		run_cmd --Spotify
        ;;
    $Thunar)
	    	run_cmd --Thunar
	;;
esac
