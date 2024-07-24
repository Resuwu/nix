{ pkgs, ... }: {
    services.displayManager.sddm = {
        enable = true;
        wayland.enable = true;
        theme = "catppuccin-mocha";
        package = pkgs.kdePackages.sddm;
    };

    environment.systemPackages = with pkgs; [
        (catppuccin-sddm.override {
            flavor = "mocha";
            font = "JetBrains Mono Semibold";
            fontSize = "13";
        })
    ];
}
