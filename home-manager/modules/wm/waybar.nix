{ programs.waybar = {
        enable = true;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                margin = "9 13 -10 18";

                modules-left = [ "custom/launcher" "hyprland/workspaces" "hyprland/language" "keyboard-state" "pulseaudio" ];
                modules-center = [ "hyprland/window"  "privacy" ];
                modules-right = [ "bluetooth" "network" "backlight" "battery" "clock" "tray" "group/group-power" ];

                "custom/launcher" = {

                };

                "hyprland/workspaces" = {

                };

                "hyprland/language" = {
                    format-en = "EN";
                    format-ru = "RU";
                };

                "keyboard-state" = {
                    capslock = true;
                    format = "{icon}";
                    format-icons = {
                        locked = "󰘲";
                    };
                };

                "pulseaudio" = {
                    reverse-scrolling = 1;
                    format = "{volume}% {icon} {format_source}";
                    format-bluetooth = "{volume}% {icon} {format_source}";
                    format-bluetooth-muted = " {icon} {format_source}";
                    format-muted = " {format_source}";
                    format-source = "{volume}% ";
                    format-source-muted = "";
                    format-icons = {
                        headphone = "";
                        hands-free = "";
                        headset = "";
                        phone = "";
                        portable = "";
                        car = "";
                        default = ["" "" ""];
                    };
                    on-click = "pavucontrol";
                    min-length = 13;
                };

                "hyprland/window" = {

                };

                "privacy" = {
                    icon-spacing = 4;
	                icon-size = 18;
	                transition-duration = 250;
                };

                "bluetooth" = {
                    format = " {status}";
	                format-connected = " {device_alias}";
	                format-connected-battery = " {device_alias} {device_battery_percentage}%";
	                tooltip-format = "{controller_alias}\t{controller_address}\n\n{num_connections} connected";
	                tooltip-format-connected = "{controller_alias}\t{controller_address}\n\n{num_connections} connected\n\n{device_enumerate}";
	                tooltip-format-enumerate-connected = "{device_alias}\t{device_address}";
	                tooltip-format-enumerate-connected-battery = "{device_alias}\t{device_address}\t{device_battery_percentage}%";
                };

                "network" = {
                    
                };

                "backlight" = {

                };

                "battery" = {

                };

                "clock" = {

                };

                "tray" = {
                    icon-size = 16;
                    spacing = 0;
                };

                "group/group-power" = {

                };
            };
        };
    };
}
