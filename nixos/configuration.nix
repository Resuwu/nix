{ inputs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ./packages.nix
        ./fonts.nix
        ./modules/bundle.nix
    ];

    time.timeZone = "Europe/Moscow";

    i18n.defaultLocale = "en_US.UTF-8";

    system.stateVersion = "24.05";
}