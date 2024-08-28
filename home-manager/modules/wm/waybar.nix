{ programs.waybar = {
        enable = true;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                margin = "0";

                modules-left = [ "hyprland/workspaces" "hyprland/language" "keyboard-state" "pulseaudio" ];
                modules-center = [ "hyprland/window"  "privacy" ];
                modules-right = [ "bluetooth" "network" "backlight" "battery" "clock" "tray" "group/group-power" ];

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
                    format = "{class}: {}";
                    rewrite = {
                        "(.*) — Mozilla Firefox" = "$1";
                    };
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
                    interface = "wlp2s0";
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
                    format = "{:%H:%M}";
                };

                "tray" = {
                    icon-size = 16;
                    spacing = 0;
                };

                "group/group-power" = {
                    orientation = "inherit";
                    drawer = {
                        transition-duration = 500;
                        children-class = "not-power";
                        transition-left-to-right = false;
                    };
                    modules = [
                        "custom/power"
                        "custom/reboot"
                    ];
                };

                "custom/reboot" = {
                    format = "󰜉";
                    tooltip = false;
                    on-click = "reboot";
                };

                "custom/power" = {
                    format = "";
                    tooltip = false;
                    on-click = "shutdown now";
                };
            };
        };
        style = ''
        * {
            border: none;
            font-family: JetBrains Mono Semibold;
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
            border-bottom: 3px solid #ff8400;
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
            background: #ff8400;
        }

        #workspaces button.urgent{
            color: #61c8ff;
        }

        #language {
            padding-left: 12px;
        }

        #keyboard-state {}

        #pulseaudio {}

        #pulseaudio.muted {
            color: #d93725;
        }

        #window {
            padding-right: 4px;
        }

        #privacy {
            padding-left: 4px;
        }

        #bluetooth {}

        #network {}
        
        #backlight {}
        
        #battery {}
        
        #clock {}
        
        #tray {}
        
        #group-power {}
        '';
    };
}
