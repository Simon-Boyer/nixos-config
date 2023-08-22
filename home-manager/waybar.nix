{ font, ...} : 
{
  home.file.".config/waybar/config.jsonc".text = ''
{
	"spacing": 8,
	"layer": "top",
	"margin-top": 5,
	"margin-left": 5,
	"margin-right": 5,
	"modules-left": [
		"wlr/workspaces",
		"hyprland/window"
	],
	"modules-center": [
		"cpu",
		"memory",
		"clock",
		"network"
	],
	"modules-right": [
	  "custom/recorder",
	  "custom/discord",
		"tray",
		"idle_inhibitor",
		"custom/notification",
		"backlight",
		"pulseaudio",
		"battery",
		"custom/session",
	],
	"custom/sep": {
		"format": " | "
	},
	"custom/space": {
		"format": "     "
	},
	"hyprland/window": {
		"format": "  {}",
		"max-length": 50,
		"separate-outputs": true
	},
	"idle_inhibitor": {
		"format": "{icon}",
		"format-icons": {
			"activated": "",
			"deactivated": ""
		}
	},
	"custom/recorder": {
		"format": "‎⭕‎",
		"return-type": "json",
		"interval": 1,
		"exec": "echo '{\"class\": \"recording\"}'",
		"exec-if": "cat /proc/asound/card*/pcm0c/sub0/status | rg RUNNING",
		"tooltip": false,
	},
	"custom/discord": {
		"format": " 󰙯 ",
		"return-type": "json",
		"interval": 1,
		"exec": "if [[ $(cat /proc/asound/card*/pcm0c/sub0/status | rg RUNNING) ]]; then echo '{\"class\": \"connected\"}'; else echo '{\"class\": \"disconnected\"}'; fi",
		"exec-if": "pgrep Discord",
		"tooltip": false,
		"on-click": "hyprctl dispatch focuswindow title:Discord"
	},
	"custom/notification": {
		"tooltip": true,
		"format": " {icon} ",
		"format-icons": {
			"notification": "",
			"none": "",
			"dnd-notification": "",
			"dnd-none": ""
		},
		"return-type": "json",
		"exec-if": "which swaync-client",
		"exec": "swaync-client -swb",
		"on-click": "swaync-client -t -sw",
		"on-click-right": "swaync-client -d -sw",
		"escape": true
	},
	"custom/session": {
		"format": "{icon}",
		"format-icons": {
			"default": " ⏻ "
		},
		"toolip": true,
		"on-click": "~/.config/rofi/powermenu-launch.sh"
	},
	"backlight": {
		"format": "{icon} {percent}%",
		"format-icons": [
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			""
		]
	},
	"wlr/workspaces": {
		"disable-scroll": true,
		"all-outputs": true,
		"on-click": "activate",
		"format": "{icon}",
		"persistent_workspaces": {
			"1": [],
			"2": [],
			"3": [],
			"4": [],
			"5": [],
			"6": [],
			"7": [],
			"8": [],
			"9": []
		},
		"format-icons": {
			"1": "1",
			"2": "2",
			"3": "3",
			"4": "4",
			"5": "5",
			"6": "6",
			"7": "7",
			"8": "8",
			"9": "9",
			"urgent": "",
			"active": ""
		}
	},
	"mwlr/workspaces": {
		"disable-scroll": true,
		"on-click": "activate",
		"format": "{icon}",
		"all-outputs": false,
		"persistent_workspaces": {
			"1": [],
			"2": [],
			"3": [],
			"4": [],
			"5": [],
			"6": [],
			"7": [],
			"8": [],
			"9": [],
			"10": []
		},
		"format-icons": {
			"1": "I",
			"2": "II",
			"3": "III",
			"4": "IV",
			"5": "V",
			"6": "VI",
			"7": "VII",
			"8": "VIII",
			"9": "IX",
			"10": "X",
			"urgent": ""
		}
	},
	"xwlr/workspaces": {
		"all-outputs": true,
		"on-click": "activate",
		"format": "{icon}",
		"format-icons": {
			"1": "",
			"2": "",
			"3": "",
			"4": "",
			"5": "",
			"urgent": "",
			"active": "",
			"default": ""
		}
	},
	"tray": {
		"spacing": 10
	},
	"clock": {
		"format": "  {:%I:%M %p |  %x } ",
		"interval": 60,
		"tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>"
	},
	"custom/bruh": {
		"interval": 60,
		"format": "{:  %A %d %b}"
	},
	"cpu": {
		"format": "   {usage}%",
		"tooltip": false
	},
	"memory": {
		"format": " {}%"
	},
	"battery": {
		"states": {
			"good": 95,
			"warning": 30,
			"critical": 15
		},
		"format": "{icon}{capacity}%  ",
		"format-charging": " {capacity}%  ",
		"format-plugged": " {capacity}%  ",
		"format-alt": "{icon}{time}  ",
		"format-icons": [
			"  ",
			"  ",
			"  ",
			"  ",
			"  "
		]
	},
	"battery#bat2": {
		"bat": "BAT2"
	},
	"custom/power_profile": {
		"exec": "sleep 0.3 && /home/adharsh/.scripts/powerprofilecycle.sh -m",
		"interval": 1,
		"on-click": "/home/adharsh/.scripts/powerprofilecycle.sh",
		"exec-on-event": true
	},
	"network": {
		"format-wifi": "  {essid}",
		"format-ethernet": "  Connected",
		"format-disconnected": " Disconnected",
		"tooltip-format-wifi": " {ifname} @ {essid}\nIP: {ipaddr}\nStrength: {signalStrength}%\nFreq: {frequency}MHz\n⬆️ {bandwidthUpBits} ⬇️ {bandwidthDownBits}",
		"tooltip-format-ethernet": " {ifname}\nIP: {ipaddr}\n⬆️ {bandwidthUpBits} ⬇️ {bandwidthDownBits}",
		"format-linked": "{ifname} (No IP) ",
		"on-click-right": "nm-connection-editor",
		"on-click": "bash './rofi-network-manager.sh'"
	},
	"pulseaudio": {
		"format": "{volume}% {icon}",
		"format-bluetooth": "{volume}% ",
		"format-bluetooth-muted": "󰝟 ",
		"format-muted": "󰝟",
		"format-source": "  ",
		"format-source-muted": "  ",
		"format-icons": {
			"headphone": "",
			"hands-free": "",
			"headset": "",
			"phone": "",
			"portable": "",
			"car": "",
			"default": [
				"",
				"",
				""
			]
		},
		"on-click": "pavucontrol"
	},
	"custom/media": {
		"format": "{icon} {}",
		"return-type": "json",
		"max-length": 40,
		"format-icons": {
			"spotify": "",
			"default": "🎜"
		},
		"escape": true
	}
}
'';
home.file.".config/waybar/config.css".text = ''
* {
	/* `otf-font-awesome` is required to be installed for icons */
	border: none;
	font-family: Material Design Icons, FontAwesome, Product Sans,
		${font};
	font-size: 14px;
	/* border-radius: 20px; */
}

window {
}
window#waybar {
	background: rgba(8, 8, 8, 0.45);
	border-radius: 7px;
	transition-property: background-color;
	transition-duration: 0.5s;
	color: white;
	/* background: transparent; */
}
/*-----module groups----*/
.modules-right {
	/* background-color: rgba(8,8,8,0.85); */
	background: transparent;
	margin: 0 10px 0 0;
	border-radius: 20px;
}
.modules-center {
	background: transparent;
	margin: 0px 0px 0px 0px;
	border-radius: 20px;
}
.modules-left {
	background: transparent;
	margin: -5px 0px -5px 0px;
	border-radius: 0px;
}

tooltip {
	background: #323437;
	color: #cdd6f4;
	border-radius: 12px;
}

#workspaces {
	padding: 0 5px;
	font-family: ${font};
	font-size: 18px;
}
#workspaces button {
    padding: 0 5px;
    background: transparent;
    color: #4c566a;
}
#workspaces button:hover {
    box-shadow: inherit;
    text-shadow: inherit;
    color: #d8dee9;
}

#workspaces button.active {
    /* color: #BC83E3; */
	color: #cdd6f4;
    transition: all 0.2s cubic-bezier(.55,-0.68,.48,1.682);
}
#workspaces button.urgent {
    color: #11111b;
    border-radius: 10px;
}

#custom-sep {
	color: #313244;
	font-size: 18px;
}

#window {
	color: #ffffff;
	font-family: ${font};
	font-size: 14px;
}

#custom-recorder {
	font-size: 10px;
}

#clock {
	margin: 2px 0 0 0;
	padding: 2px;
	border-radius: 10px;
	font-family: ${font};
}

#battery,
#cpu,
#memory,
#temperature,
#network #pulseaudio,
#tray,
#mode,
#custom-power,
#custom-menu,
#idle_inhibitor {
	padding: 0 5px;
}

#mode {
	color: #cc3436;
	font-weight: bold;
}

/*-----Indicators----*/
#network.disconnected {
	color: #ff5454;
}
#network.disabled {
	color: #e3c78a;
}
#idle_inhibitor.activated {
	color: #2dcc36;
}
#pulseaudio.muted {
	color: #e3c78a;
}
#battery.charging {
	color: #8cc85f;
}
#battery.warning:not(.charging) {
	color: #e3c78a;
}
#battery.critical:not(.charging) {
	color: #ff5454;
}
#custom-discord.connected {
	color: #2d8043;
}
#custom-discord.disconnected {
	color: #a4a6a5;
}
'';

}