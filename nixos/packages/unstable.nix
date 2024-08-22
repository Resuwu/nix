{ unstable, ... }: {
    environment.systemPackages = with unstable; [
        firefox
        anilibria-winmaclinux
        spotify
        telegram-desktop
        webcord
        libreoffice-qt6-fresh
        obsidian
        jetbrains.idea-community
        ( qt6.callPackage ./custom/pobfrontend {} )
    ];
}