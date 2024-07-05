{ pkgs, ... }: {
    systemd.services.enable-dark-mode = {
        description = "Enable dark mode by default for gtk apps";
        serviceConfig = {
            ExecStart = ''
                ${pkgs.dconf}/bin/dconf write \ 
                /org/gnome/desktop/interface/color-scheme "'prefer-dark'"
            '';
            ExecStop = ''
                ${pkgs.dconf}/bin/dconf write \ 
                /org/gnome/desktop/interface/color-scheme "'prefer-light'"
            '';
            RemainAfterExit = true;
        };
        wantedBy = [ "multi-user.target" ];
    };

    systemd.services.enable-dark-mode.enable = true;
}