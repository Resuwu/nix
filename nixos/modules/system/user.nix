{ pkgs, ... }: {
    users = {
        defaultUserShell = pkgs.fish;
        
        users.resu = {
            isNormalUser = true;
            extraGroups = [ "wheel" "input" "vboxusers" ];
            packages = with pkgs; [];
        };
    };
}
