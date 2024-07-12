{ programs.waybar = {
        enable = true;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                margin = "9 13 -10 18";

                modules-left = ["hyprland/workspaces" "hyprland/language" "keyboard-state" "hyprland/submap"];
                modules-center = ["clock" "custom/weather"];
                modules-right = ["pulseaudio" "custom/mem" "cpu" "backlight" "battery" "tray"];

                "hyprland/workspaces" = {
                    disable-scroll = true;
                };

                "hyprland/language" = {
                    format-en = "US";
                    format-ru = "RU";
	                min-length = 5;
	                tooltip = false;
                };

                "keyboard-state" = {
                    capslock = true;
                    format = "{icon} ";
                    format-icons = {
                        locked = " ";
                        unlocked = "";
                    };
                };
            };
        };
    };
}