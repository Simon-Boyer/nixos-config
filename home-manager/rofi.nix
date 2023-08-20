{ font, ... } : {
  home.file.".config/rofi/launcher.rasi".text = ''
  configuration {
    font: "${font} 10";
    show-icons: true;
    icon-theme: "Colloid-dark";
    fullscreen: false;
    threads: 0;
    matching: "fuzzy";
    scroll-method: 0;
    monitor: "primary";
}

* {
    transparent: #00000000;
    foreground: #F2F2F2EE;
    background-selected: #F2F2F245;
    background-active: #F2F2F230;
    background-white: #F2F2F211;
    background-black: #00000000;
    urgent: #E91E6366;
    urgent-selected: #E91E6377;
    border-radius: 18px;
}

window {
    transparency: "real";
    background-color: #191724D0;
    text-color: #6e6a86;
    x-offset: 5px;
    y-offset: -50px;
}

prompt {
    enabled: false;
}

button {
    action: "ok";
    str: " ";
    font: "${font} 16";
    expand: false;
    text-color: #6e6a86; background-color: @transparent; vertical-align: 0.5;
    horizontal-align: 0.5;
}

entry {
    font: "${font} 12";
    background-color: @transparent;
    text-color: #6e6a86;
    expand: true;
    vertical-align: 0.5;
    horizontal-align: 0;
    placeholder: "Global Search";
    placeholder-color: @foreground;
    blink: true;
}

entry-wrapper {
    orientation: horizontal;
    margin: 0 12px 0 12px;
    spacing: 24px;
    vertical-align: 0.5;
    background-color: @transparent;
    children: [ button, entry ];
}

inputbar {
    padding: 14px;
    margin: 10px 10px 14px 10px;
    background-color: #26233a;
    text-color: @foreground;
    expand: false;
    border-radius: 12px;
    position: north;
    children: [ entry-wrapper ];
}

listview {
    background-color: @transparent;
    spacing: 0;
    cycle: true;
    dynamic: true;
    scrollbar: true;
}

mainbox {
    width: 200px;
    expand: true;
    spacing: 12px;
    padding: 5px;
    background-color: @background-black;
    children: [ inputbar, listview ];
}

scrollbar {
    background-color: @background-white;
    handle-width: 0;
    margin: 0 0 5px 0;
    border-radius: 9px;
}

element {
    background-color: @transparent;
    text-color: @foreground;
    orientation: horizontal;
    border: 0;
    border-color: @background-white;
    border-radius: 9px;
    spacing: 24px;
    margin: 0px 12px 0px 12px;
    padding: 10px 24px 10px 24px;
}

element-icon {
    size: 24px;
    border: 0;
    border-color: @transparent;
    background-color: transparent;
}

element-text {
    font: "${font} 12";
    expand: true;
    horizontal-align: 0;
    vertical-align: 0.5;
    color: #4AA19B;
    background-color: transparent;
}

element normal.urgent,
element alternate.urgent {
    background-color: @urgent;
    text-color: @foreground;
    border-radius: 9px;
}

element normal.active,
element alternate.active {
    background-color: @background-active;
    text-color: @foreground;
}

element selected {
    background-color: #403d5220;
    text-color: @foreground;
}

element selected.urgent {
    background-color: @urgent-selected;
    text-color: @foreground;
}

element selected.active {
    background-color: #403d5220;
    color: @foreground-selected;
}
'';

home.file.".config/rofi/clip.rasi".text = ''
configuration {
    font: "${font} 12";
    show-icons: true;
    icon-theme: "Colloid-dark";
    fullscreen: false;
    threads: 0;
    matching: "normal";
    scroll-method: 0;
    monitor: "primary";
}

* {
    transparent: #00000000;
    foreground: #F2F2F2EE;
    background-selected: #F2F2F245;
    background-active: #F2F2F230;
    background-white: #F2F2F211;
    background-black: #00000000;
    urgent: #E91E6366;
    urgent-selected: #E91E6377;
    border-radius: 18px;
}

window {
    transparency: "real";
    background-color: #1917244D;
    text-color: #6e6a86;
    location:                    southeast;
    anchor:                      southeast;
    fullscreen:                  false;
    width:                       500px;
    x-offset:                    -11px;
    y-offset:                    -11px;
}

prompt {
    enabled: false;
}

button {
    action: "ok";
    str: " ";
    font: "${font} 16";
    expand: false;
    text-color: #6e6a86; background-color: @transparent; vertical-align: 0.5;
    horizontal-align: 0.5;
}

entry {
    font: "${font} 12";
    background-color: @transparent;
    text-color: #6e6a86;
    expand: true;
    vertical-align: 0.5;
    horizontal-align: 0;
    placeholder: "Cliphist Search";
    placeholder-color: @foreground;
    blink: true;
}

entry-wrapper {
    orientation: horizontal;
    margin: 0 12px 0 12px;
    spacing: 24px;
    vertical-align: 0.5;
    background-color: @transparent;
    children: [ button, entry ];
}

inputbar {
    padding: 14px;
    margin: 10px 10px 14px 10px;
    background-color: #26233a;
    text-color: @foreground;
    expand: false;
    border-radius: 12px;
    position: north;
    children: [ entry-wrapper ];
}

listview {
    background-color: @transparent;
    spacing: 0;
    cycle: true;
    dynamic: true;
    scrollbar: true;
}

mainbox {
    width: 200px;
    expand: true;
    spacing: 12px;
    padding: 5px;
    background-color: @background-black;
    children: [ inputbar, listview ];
}

scrollbar {
    background-color: @background-white;
    handle-width: 0;
    margin: 0 0 5px 0;
    border-radius: 9px;
}

element {
    background-color: @transparent;
    text-color: @foreground;
    orientation: horizontal;
    border: 0;
    border-color: @background-white;
    border-radius: 9px;
    spacing: 24px;
    margin: 0px 12px 0px 12px;
    padding: 10px 24px 10px 24px;
}

element-icon {
    size: 24px;
    border: 0;
    border-color: @transparent;
    background-color: transparent;
}

element-text {
    font: "${font} 12";
    expand: true;
    horizontal-align: 0;
    vertical-align: 0.5;
    color: #FAF9F6;
    background-color: transparent;
}

element normal.urgent,
element alternate.urgent {
    background-color: @urgent;
    text-color: @foreground;
    border-radius: 9px;
}

element normal.active,
element alternate.active {
    background-color: @background-active;
    text-color: @foreground;
}

element selected {
    background-color: #403d5220;
    text-color: @foreground;
}

element selected.urgent {
    background-color: @urgent-selected;
    text-color: @foreground;
}

element selected.active {
    background-color: #403d5220;
    color: @foreground-selected;
}
'';

home.file.".config/rofi/powermenu".text = ''
/**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Rofi Theme File
 * Rofi Version: 1.7.3
 **/

/*****----- Configuration -----*****/
configuration {
    show-icons:                 false;
}


* {
    background:     #1E2127FF;
    background-alt: #282B31FF;
    foreground:     #FFFFFFFF;
    selected:       #61AFEFFF;
    active:         #98C379FF;
    urgent:         #E06C75FF;
    font: "JetBrains Mono Nerd Font 12";
}


* {
    /* Resolution : 1920x1080 */
    box-spacing:                 50px;
    box-margin:                  100px 100px;
    box-padding:                 50px;
    message-margin:              0px 400px;
    inputbar-spacing:            0px;
    list-spacing:                0px;
    general-padding:             20px;
    element-padding:             90px 10px;
    element-radius:              80px;
    general-radius:              100%;
    element-font:                "feather 48";
}

/*****----- Main Window -----*****/
window {
    /* properties for window widget */
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  false;
    width:                       1500px;
    x-offset:                    0px;
    y-offset:                    0px;

    /* properties for all widgets */
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    cursor:                      "default";
    background-color:            #00000000;
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     var(box-spacing);
    margin:                      var(box-margin);
    padding:                     var(box-padding);
    border:                      0px solid;
    border-radius:               var(element-radius);
    border-color:                @selected;
    background-color:            @background-alt;
    children:                    [ "inputbar", "listview" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     var(inputbar-spacing);
    margin:                      0px;
    padding:                     0px;
    border:                      0px;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    children:                    [ "textbox-prompt-colon", "dummy", "prompt" ];
}

dummy {
    background-color:            transparent;
}

textbox-prompt-colon {
    enabled:                     true;
    expand:                      false;
    str:                         "SYSTEM";
    padding:                     var(general-padding);
    border-radius:               var(general-radius);
    background-color:            @background;
    text-color:                  @urgent;
}
prompt {
    enabled:                     true;
    padding:                     var(general-padding);
    border-radius:               var(general-radius);
    background-color:            @background;
    text-color:                  @active;
}

/*****----- Message -----*****/
message {
    enabled:                     true;
    margin:                      var(message-margin);
    padding:                     var(general-padding);
    border:                      0px;
    border-radius:               var(general-radius);
    border-color:                @selected;
    background-color:            @background-alt;
    text-color:                  @foreground;
}
textbox {
    background-color:            inherit;
    text-color:                  inherit;
    vertical-align:              0.5;
    horizontal-align:            0.5;
    placeholder-color:           @foreground;
    blink:                       true;
    markup:                      true;
}
error-message {
    padding:                     var(general-padding);
    border:                      0px solid;
    border-radius:               var(general-radius);
    border-color:                @selected;
    background-color:            @background;
    text-color:                  @foreground;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     5;
    lines:                       1;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   false;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     var(list-spacing);
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               var(element-radius);
    border-color:                @selected;
    background-color:            @background;
    text-color:                  @foreground;
    cursor:                      "default";
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     0px;
    margin:                      0px;
    padding:                     var(element-padding);
    border:                      0px solid;
    border-radius:               var(element-radius);
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    cursor:                      pointer;
}
element-text {
    font:                        var(element-font);
    background-color:            transparent;
    text-color:                  inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.5;
}
element selected.normal {
    background-color:            var(selected);
    text-color:                  var(background);
}

'';

home.file.".config/rofi/powermenu-launch.sh" = {
    executable = true;
    text = ''
    #!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Power Menu
#
## Available Styles
#
## style-1   style-2   style-3   style-4   style-5

# Current Theme
dir="$HOME/.config/rofi/power"
theme='power'

# CMDs
uptime=$(uptime | tr "," " " | cut -f6-8 -d" ")
host=$(hostname)

# Options
shutdown=''
reboot=''
lock='󰌾'
suspend='󰤄'
logout='󰗽'
yes='󰗡'
no=''

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "Uptime: ''$uptime" \
		-mesg "Uptime: ''$uptime" \
		-theme ''${dir}/''${theme}.rasi
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$lock\n$shutdown\n$suspend\n$logout\n$reboot" | rofi_cmd
}

# Execute Command
run_cmd() {
		if [[ $1 == '--shutdown' ]]; then
			systemctl poweroff
		elif [[ $1 == '--reboot' ]]; then
			systemctl reboot
		elif [[ $1 == '--suspend' ]]; then
			mpc -q pause
			amixer set Master mute
			systemctl suspend
		elif [[ $1 == '--logout' ]]; then
      hyprctl dispatch exit
		fi
}

# Actions
chosen="$(run_rofi)"
case ''${chosen} in
    $shutdown)
		run_cmd --shutdown
        ;;
    $reboot)
		run_cmd --reboot
        ;;
    $lock)
    swaylock -k --indicator-idle-visible --indicator-radius 100 --image ~/.config/wallpapers/active.*
        ;;
    $suspend)
		run_cmd --suspend
        ;;
    $logout)
		run_cmd --logout
        ;;
esac

    '';
};
}
