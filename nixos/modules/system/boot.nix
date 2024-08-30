{ pkgs, ... }: {
    boot = {
        loader = {
            systemd-boot.enable = true;
            efi.canTouchEfiVariables = true;
        };

	kernelPackages = pkgs.linuxPackages_latest;

        initrd.verbose = false;
        consoleLogLevel = 0;
        kernelParams = [ "quiet" "udev.log_level=3" ];

        plymouth = {
            enable = true;
            theme = "angular_alt";
            themePackages = with pkgs; [
                (adi1090x-plymouth-themes.override {
                    selected_themes = [ "angular_alt" ];
                })
            ];
        };

        blacklistedKernelModules = [ "uvcvideo" ];
    };
}
