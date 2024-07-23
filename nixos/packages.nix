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

        hyprland
        xdg-desktop-portal-hyprland
        hyprlock
        hypridle
        xwayland
        fuzzel
        swww
        mako
        waybar
        networkmanagerapplet

        playerctl
        pipewire
        pulseaudio
        pamixer

        home-manager
	    wireguard-tools
        
        (catppuccin-sddm.override {
            flavor = "mocha";
            font = "JetBrains Mono Semibold";
            fontSize = "13";
        })
    ]);
}
