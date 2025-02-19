{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    #Programs
    alacritty
    mpv
    gimp
    bitwarden-desktop
    filezilla
    mongodb-compass
    postman
    pgadmin4-desktopmode
    ventoy

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
    (callPackage ./custom/spoofdpi {})
    brightnessctl
    putty
    freerdp
    cbonsai

    #Fun
    neo-cowsay
    fortune
    lolcat

    #Programming
    gradle_7
    jdk17
    jdk23
    alejandra

    #Spellcheck
    hunspell
    hunspellDicts.en_US
    hunspellDicts.ru_RU

    #Bluetooth
    bluez
    bluez-tools
    bluez-alsa

    #Network
    shadowsocks-rust
    nmap

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
    xfce.thunar

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
