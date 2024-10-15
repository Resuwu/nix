let
  defaultPath = "/run/current-system/sw/bin/";
in {
  systemd.services.disable-turbo-boost = {
    description = "Disable Intel Turbo Boost using pstate driver";
    serviceConfig = {
      ExecStart = ''${defaultPath}sh -c "${defaultPath}echo 1 > /sys/devices/system/cpu/intel_pstate/no_turbo"'';
      ExecStop = ''${defaultPath}sh -c "${defaultPath}echo 0 > /sys/devices/system/cpu/intel_pstate/no_turbo"'';
      RemainAfterExit = true;
    };
    wantedBy = ["sysinit.target"];
  };

  systemd.services.disable-turbo-boost.enable = true;
}
