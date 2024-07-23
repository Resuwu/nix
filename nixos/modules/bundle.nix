{ imports = [
        ./systemd/disable-turbo-boost.nix
        ./auto-upgrade.nix
        ./bluetooth.nix
        ./bootloader.nix
        ./hyprland.nix
        ./networking.nix
        ./nix-settings.nix
        ./printing.nix
        ./sddm.nix
        ./sound.nix
        ./ssh.nix
        ./user.nix
    ];
}