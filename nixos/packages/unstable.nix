{ unstable, ... }: {

    environment.systemPackages = with unstable; [
        firefox
        anilibria-winmaclinux
        spotify
        telegram-desktop
        webcord
        obsidian
        jetbrains.idea-community
        ( qt6.callPackage ./custom/pobfrontend {} )
    ];
}