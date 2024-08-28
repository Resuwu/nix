{ pkgs, ... }: 
let
    tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
    theme = ''"border=magenta;text=cyan;prompt=green;time=red;action=blue;button=yellow;container=black;input=red"'';
    hyprland = ''"hyprland &> /dev/null"'';
in {
    services.greetd = {
        enable = true;
        settings = {
            default_session = {
                command = "${tuigreet} --time --remember --asterisks --theme ${theme} --cmd ${hyprland}";
                user = "greeter";
            };
        };
    };
}