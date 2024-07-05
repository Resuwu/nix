let
    defaultPath = "/run/current-system/sw";
in {
    systemd.services.disable-turbo-boost = {
        description = "Disable Intel Turbo Boost using pstate driver";
        serviceConfig = {
            ExecStart = "${defaultPath}/bin/sh -c \"${defaultPath}/bin/echo 1 > /sys/devices/system/cpu/intel_pstate/no_turbo\"";
            ExecStop = "${defaultPath}/bin/sh -c \"${defaultPath}/bin/echo 0 > /sys/devices/system/cpu/intel_pstate/no_turbo\"";
            RemainAfterExit = true;
        };
        wantedBy = [ "sysinit.target" ];
    };

    systemd.services.disable-turbo-boost.enable = true;
}