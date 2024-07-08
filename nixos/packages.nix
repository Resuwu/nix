{ pkgs, ... }: {
    nixpkgs.config = {
        allowUnfree = true;
    };

    environment.systemPackages = with pkgs; [
        firefox
        telegram-desktop
        alacritty
        obsidian

        neofetch
        tree
        git
        openssl
        htop

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
    ];

    fonts.packages = with pkgs; [
        jetbrains-mono
        powerline-fonts
        powerline-symbols
    ];
}
