{ pkgs, ... }: {
    nixpkgs.config = {
        allowUnfree = true;
    };

    environment.systemPackages = with pkgs; [
        firefox
        telegram-desktop
        alacritty
        rofi
        obsidian

        neofetch
        tree
        git
        swww
        openssl

        xwayland

        hyprland
        xdg-desktop-portal-hyprland
        waybar
        networkmanagerapplet

        pipewire
        pulseaudio

        home-manager
    ];

    fonts.packages = with pkgs; [ jetbrains-mono ];
}