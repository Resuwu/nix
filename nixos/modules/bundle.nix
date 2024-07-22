{ imports = [
        ./bluetooth.nix
        ./bootloader.nix
        ./hyprland.nix
        ./networking.nix
        ./sddm.nix
        ./settings.nix
        ./sound.nix
        ./ssh.nix
        ./tty.nix
        ./user.nix
        ./systemd/disable-turbo-boost.nix
    ];
}