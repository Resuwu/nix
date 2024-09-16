{ programs.waybar = {
        enable = true;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                margin = "0";

                modules-left = [ "hyprland/workspaces" "hyprland/language" "keyboard-state" "custom/splitter" "pulseaudio" ];
                modules-center = [ "hyprland/window"  "privacy" ];
                modules-right = [ "bluetooth" "custom/splitter" "network" "custom/splitter" "backlight" "custom/splitter" "battery" "custom/splitter" "clock" "tray" ];

                "hyprland/language" = {
                    format-en = "EN";
                    format-ru = "RU";
                };

                "keyboard-state" = {
                    capslock = true;
                    format = "{icon}";
                    format-icons = {
                        locked = "";
                        unlocked = "";
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
                    on-click = "pamixer -t";
                };

                "hyprland/window" = {
                    format = "{class}";
                };

                "custom/splitter" = {
                    format = "|";
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
                    on-click = "bluetooth toggle";
                };

                "network" = {
                    interface = "wlp58s0";
                    format = "{ifname}";
                    format-wifi = "{essid} ({signalStrength}%) ";
                    format-ethernet = "{ipaddr}/{cidr} 󰊗";
                    format-disconnected = "";
                    tooltip-format = "{ifname} via {gwaddr} 󰊗";
                    tooltip-format-wifi = "{essid} ({signalStrength}%) ";
                    tooltip-format-ethernet = "{ifname} ";
                    tooltip-format-disconnected = "Disconnected";
                    max-length = 50;
                };

                "backlight" = {
                    device = "intel_backlight";
                    format = "{percent}% {icon}";
                    format-icons = [ "" "" ];
                };

                "battery" = {
                    states = {
                        warning = 30;
                        critical = 15;
                    };
                    format = "{capacity}% {icon}";
                    format-charging = "{capacity}% ";
                    format-plugged = "{capacity}% ";
                    format-alt = "{time} {icon}";
                    format-icons = [ "" "" "" "" "" ];
                    max-length = 25;
                };

                "clock" = {
                    format = "{:%I:%M %p}";
                    tooltip-format = "{:%A %d-%m-%Y}";
                };

                "tray" = {
                    icon-size = 16;
                    spacing = 0;
                };
            };
        };
        style = ''
        * {
            border: none;
            font-family: JetBrains Mono;
            font-size: 20px;
            min-height: 22px;
            color: #eeeeee;
            background: transparent;
            margin: 0;
            transition: all .5s ease-out;
            border-radius: 0px;
            padding-left: 8px;
            padding-right: 8px;
        }

        #waybar {
            background-color: rgba(10, 10, 10, 0.5);
            border-bottom: 3px solid #a3be8c;
        }

        #splitter {
            padding-left: 2px;
            padding-right: 2px;
            color: #5e81ac;
        }

        #workspaces {
            padding-left: 0px;
            padding-right: 0px;
        }

        #workspaces button {
            padding-left: 4px;
            padding-right: 4px;
        }

        #workspaces button.active {
            background: #a3be8c;
            color: #111111;
        }

        #workspaces button.urgent{
            color: #61c8ff;
        }

        #language {
            padding-left: 12px;
            padding-right: 3px;
        }

        #keyboard-state {
            padding-left: 3px;
        }

        #pulseaudio.muted {
            color: #d93725;
        }

        #window {
            padding-right: 3px;
        }

        #privacy {
            padding-left: 3px;
        }

        #bluetooth {}

        #network {}
        
        #backlight {}
        
        #battery {}
        
        #clock {}
        
        #tray {}
        '';
    };
}
