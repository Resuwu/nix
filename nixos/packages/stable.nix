{ pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        #Programs
        alacritty
        mpv
        gimp
        bitwarden-desktop
        filezilla
        mongodb-compass
        pgadmin4-desktopmode
        postman

        #Cli tools
        vim
        imv
        file
        tree
        zip
        unzip
        git
        lazygit
        cava
        lux
        openssl
        htop
	    wireguard-tools
        brightnessctl

        #Spellcheck
        hunspell
        hunspellDicts.en_US
        hunspellDicts.ru_RU

        #Bluetooth
        bluez
        bluez-tools
        bluez-alsa

        #Hypr
        hyprland
        hypridle
        xdg-desktop-portal-hyprland

        #Wm modules
        fuzzel
        swww
        libnotify
        mako
        waybar
        home-manager
        waylock

        #Screenshots
        grim
        slurp
        swappy

        #Wayland
        xwayland
        wl-clipboard
        cliphist

        #Audio
        playerctl
        pipewire
        pulseaudio
        pamixer
    ];
}
