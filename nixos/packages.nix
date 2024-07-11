{ pkgs, unstable, ... }: {

    environment.systemPackages =
        (with unstable; [
            firefox
            telegram-desktop
            obsidian
            jetbrains.idea-community
            path-of-building
            webcord
        ])

        ++

        (with pkgs; [
            alacritty

            fastfetch
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
