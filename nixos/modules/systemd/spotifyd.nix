let
    defaultPath = "/run/current-system/sw/bin/";
in {
    systemd.user.services.spotifyd = {
        description = "A spotify playing daemon";
        serviceConfig = {
            Wants = [ "sound.target" "network-online.target" ];
            After = [ "sound.target" "network-online.target" ];

            ExecStart = "${defaultPath}spotifyd --no-daemon";

            Restart = "always";
            RestartSec = 12;
        };
        wantedBy = [ "default.target" ];
    };

    systemd.services.spotifyd.enable = true;
}