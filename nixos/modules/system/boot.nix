{ pkgs, ... }: {
    boot = {
        loader = {
            systemd-boot.enable = true;
            efi.canTouchEfiVariables = true;
        };

	kernelPackages = pkgs.linuxPackages_latest;

        initrd.verbose = false;
        consoleLogLevel = 0;
        kernelParams = [ "quiet" "udev.log_level=3" "console=tty1" ];

        plymouth = {
            enable = true;
            theme = "catppuccin-mocha";
            themePackages = with pkgs; [
                (catppuccin-plymouth.override { variant = "mocha"; })
            ];
        };

        blacklistedKernelModules = [ "uvcvideo" ];
    };
}
