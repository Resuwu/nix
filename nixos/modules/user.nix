{ pkgs, ... }: {
    programs.fish.enable = true; 

    users = {
        defaultUserShell = pkgs.fish;
        
        users.resu = {
            isNormalUser = true;
            extraGroups = [ "wheel" ];
            packages = with pkgs; [];
        };
    };

    services.getty.autologinUser = "resu";
}