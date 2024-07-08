{ nix = {
        settings = {
            auto-optimise-store = true;
            experimental-features = [ "nix-command" "flakes" ];
            warn-dirty = false;
        };
        gc = {
            automatic = true;
            dates = "weekly";
            options = "--delete-older-than 14d";
        };
    };
}