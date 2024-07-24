{ pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        #Programs
        alacritty

        #Cli tools
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
        mako
        waybar
        light
        swappy
        xwayland
        home-manager

        #Audio
        playerctl
        pipewire
        pulseaudio
        pamixer
    ];
}
