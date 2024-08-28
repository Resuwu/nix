{ pkgs, ... }: 
let
    tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
    theme = ''"border=yellow;text=white;prompt=grey;time=yellow;action=gray;button=yellow;container=black;input=white"'';
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