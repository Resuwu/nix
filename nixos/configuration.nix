{ inputs, ... }: {
    imports = [
        ./hardware-configuration.nix
        ./packages
        ./modules
    ];
    system.stateVersion = "24.05";
}