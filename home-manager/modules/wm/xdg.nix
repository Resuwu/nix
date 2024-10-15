{   xdg = {
        mimeApps = {
            enable = true;
            defaultApplications = {
                "FileManager" = ["thunar.desktop"];
            };
        };

        desktopEntries.thunar = {
            name = "Thunar";
            exec = "${pkgs.xfce.thunar}/bin/thunar";
        };
    };
}