{ pkgs, ... }: {
    boot = {
        loader = {
            systemd-boot.enable = true;
            efi.canTouchEfiVariables = true;
        };
        
        initrd.verbose = false;
        consoleLogLevel = 0;
        kernelParams = [ "quiet" "udev.log_level=3" ];

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
