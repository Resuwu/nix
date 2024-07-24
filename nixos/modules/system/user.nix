{ pkgs, ... }: {
    users = {
        defaultUserShell = pkgs.fish;
        
        users.resu = {
            isNormalUser = true;
            extraGroups = [ "wheel" "input" ];
            packages = with pkgs; [];
        };
    };
}
