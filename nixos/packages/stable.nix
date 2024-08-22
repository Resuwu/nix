{ pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        #Programs
        alacritty

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
        upower

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
        flameshot
        home-manager

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
