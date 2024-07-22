{ pkgs, ... }: {
    services.displayManager.sddm.enable = true;
    services.displayManager.sddm.wayland.enable = true;
    services.displayManager.sddm.theme = "catppuccin-sddm";

    packages = with pkgs; [ catppuccin-sddm ];
}