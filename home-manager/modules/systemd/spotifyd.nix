let
    defaultPath = "/run/current-system/sw/bin/";
in {
    systemd.user.services.spotifyd = {
        Unit = {
            description = "A spotify playing daemon";

            Wants = [ "sound.target" "network-online.target" ];
            After = [ "sound.target" "network-online.target" ];
        };

        Service = {
            ExecStart = "${defaultPath}spotifyd --no-daemon";

            Restart = "always";
            RestartSec = 12;
        };

        Install = {
            wantedBy = [ "default.target" ];
        };
    };

    systemd.user.services.spotifyd.enable = true;
}