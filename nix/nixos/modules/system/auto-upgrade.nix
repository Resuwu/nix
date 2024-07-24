{ system.autoUpgrade = {
        enable = true;
        operation = "boot";
        flake = "~/nix";
        flags = [ "--update-input" "nixpkgs" "--commit-lock-file" ];
        dates = "weekly";
    };
}