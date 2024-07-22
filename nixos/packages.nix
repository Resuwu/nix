{ pkgs, unstable, ... }: {

    environment.systemPackages =
        (with unstable; [
            firefox
            anilibria-winmaclinux

            spotify

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
            playerctl
            (catppuccin-sddm.override {
                flavor = "mocha";
                font = "JetBrains Mono Semibold";
                fontSize = "13";
            })

            pipewire
            pulseaudio
            pamixer

            home-manager
	    wireguard-tools
        ]);

    fonts.packages = with pkgs; [
	jetbrains-mono
        powerline-fonts
        powerline-symbols
	(nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    ];
}
