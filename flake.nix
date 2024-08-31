{
    description = "My system configuration";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
        nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager/release-24.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }@inputs:
        let
            system = "x86_64-linux";
            lib = nixpkgs.lib;
            
            pkgs = import nixpkgs {
                inherit system;
                config.allowUnfree = true;
            };

            unstable = import nixpkgs-unstable {
                inherit system;
                config.allowUnfree = true;
            };

        in {
        nixosConfigurations.resu-laptop = lib.nixosSystem {
            specialArgs = {
                inherit inputs;
                inherit system;
                inherit pkgs;
                inherit unstable;
            };
            modules = [ ./nixos/configuration.nix ];
        };

        homeConfigurations.resu = home-manager.lib.homeManagerConfiguration {
            inherit pkgs;
            modules = [ ./home-manager/home.nix ];
        };
    };
}
