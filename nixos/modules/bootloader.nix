{ pkgs, ... }: {
    boot = {
        loader = {
            systemd-boot.enable = true;
            efi.canTouchEfiVariables = true;
        };
        initrd.verbose = false;
        consoleLogLevel = 0;

        plymouth = {
            enable = true;
            theme = "catppuccin-mocha";
            themePackages = with pkgs; [
                (catppuccin-plymouth.override {variant = "mocha";})
            ];
        };

        kernelParams = [ "quiet" "udev.log_level=3" ];
        blacklistedKernelModules = [ "uvcvideo" ];
    };
}
