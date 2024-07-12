{ pkgs, unstable, ... }: {

    environment.systemPackages =
        (with unstable; [
            firefox
            anilibria-winmaclinux

            spotify
            spotify-cli-linux

            telegram-desktop
            webcord

            obsidian
            jetbrains.idea-community

            path-of-building
        ])

        ++

        (with pkgs; [
            alacritty
            imv

            file
            tree
            zip
            unzip
            git
            cava
            lux
            fastfetch
            openssl
            htop

            bluez
            bluez-tools
            bluez-alsa

            xwayland
            hyprland
            xdg-desktop-portal-hyprland
            fuzzel
            swww
            waybar
            networkmanagerapplet

            pipewire
            pulseaudio

            home-manager
        ]);

    fonts.packages = with pkgs; [
        jetbrains-mono
        powerline-fonts
        powerline-symbols
    ];
}
