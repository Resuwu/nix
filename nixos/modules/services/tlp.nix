{
    services.tlp = {
        enable = true;
        settings = {
            CPU_SCALING_GOVERNOR_ON_AC = "powersave";
            CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

            CPU_ENERGY_PERF_POLICY_ON_BAT = "balance_power";
            CPU_ENERGY_PERF_POLICY_ON_AC = "default";

            CPU_MIN_PERF_ON_AC = 0;
            CPU_MAX_PERF_ON_AC = 90;
            CPU_MIN_PERF_ON_BAT = 0;
            CPU_MAX_PERF_ON_BAT = 65;

            START_CHARGE_THRESH_BAT0 = 0;
            STOP_CHARGE_THRESH_BAT0 = 1;
        };
    };
}
