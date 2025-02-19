{unstable, ...}: {
  environment.systemPackages = with unstable; [
    firefox
    anilibria-winmaclinux
    spotify
    telegram-desktop
    wpsoffice
    webcord
    obsidian
    jetbrains.idea-community
    (qt6.callPackage ./custom/pobfrontend {})
  ];
}
