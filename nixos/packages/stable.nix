{ pkgs, ... }: {

    environment.systemPackages = with pkgs; [
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
        light
        swappy
        wleave

        playerctl
        pipewire
        pulseaudio
        pamixer

        home-manager
	    wireguard-tools
    ];
}
