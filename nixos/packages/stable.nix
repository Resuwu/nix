{ pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        #Programs
        alacritty
        mpv
        gimp
        bitwarden-desktop
        filezilla

        #Cli tools
        vim
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
        hyprlock
        hypridle
        xdg-desktop-portal-hyprland

        #Wm modules
        fuzzel
        swww
        libnotify
        mako
        waybar
        light
        home-manager

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
