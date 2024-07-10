{ pkgs, unstable, ... }: {
    nixpkgs.config.allowUnfree = true;
    nixpkgs-unstable.config.allowUnfree = true;

    environment.systemPackages =
        (with pkgs-unstable; [
            firefox
            telegram-desktop
            obsidian
            jetbrains.idea-community
        ])

        ++

        (with pkgs; [
            Alacritty

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
        ]);

    fonts.packages = with pkgs; [
        jetbrains-mono
        powerline-fonts
        powerline-symbols
    ];
}
