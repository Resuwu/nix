{pkgs, ...}: let
  tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
  theme = ''"border=green;text=white;prompt=grey;time=green;action=gray;button=green;container=black;input=white"'';
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
    vt = 2;
  };
}
