{ imports = [
        ./bluetooth.nix
        ./bootloader.nix
        ./default.nix
        ./hyprland.nix
        ./networking.nix
        ./sound.nix
        ./ssh.nix
        ./tty.nix
        ./user.nix
        ./systemd/disable-turbo-boost.nix
    ];
}