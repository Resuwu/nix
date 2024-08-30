{
    services.hypridle = {
        enable = true;
        settings = {
            general = {
                lock_cmd = "pidof hyprlock || hyprlock";
                before_sleep_cmd = "loginctl lock-session";
                after_sleep_cmd = "hyprctl dispatch dpms on";
            };

            listener = [{
                    timeout = 120;
                    on-timeout = "brightnessctl -s set 25%";
                    on-resume = "brightnessctl -r";
                }
                { 
                    timeout = 120;
                    on-timeout = "brightnessctl -sd rgb:kbd_backlight set 0";
                    on-resume = "brightnessctl -rd rgb:kbd_backlight";
                }
                {
                    timeout = 300;
                    on-timeout = "swaylock-fancy -df jetbrains--mono --daemonize";
                }
                {
                    timeout = 330;
                    on-timeout = "hyprctl dispatch dpms off";
                    on-resume = "hyprctl dispatch dpms on";
                }
                {
                    timeout = 1800;
                    on-timeout = "systemctl suspend";
                }
            ];
        };
    };
}
