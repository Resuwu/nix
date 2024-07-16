{ programs.waybar = {
        enable = true;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                margin = "9 13 -10 18";

                modules-left = [ "hyprland/workspaces" "hyprland/language" "keyboard-state" "pulseaudio" ];
                modules-center = [ "hyprland/window"  "privacy" ];
                modules-right = [ "bluetooth" "network" "backlight" "battery" "clock" "tray" "group/group-power" ];

                "hyprland/language" = {
                    format-en = "English";
                    format-ru = "Russian";
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
                    min-length = 13;
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
            min-height: 24px;
            border-radius: 0px;
        }

        #waybar {
            background-color: rgba(0, 0, 0, 0.4);
            border-radius: 10px;
        }

        #workspaces {
            margin: 2px;
        }

        #workspaces button {
            transition: all .5s ease-out;
            color: #5e81ac;
        }

        #workspaces button:hover {
            background-color: rgba(129, 161, 193, 0.8);
            color: #d8dee9;
        }

        #workspaces button.active {
            background-color: rgba(208, 135, 112, 0.8);
            color: #e5e9f0;
        }

        #workspaces button.urgent{
            color: #bf616a;
        }
        '';
    };
}
