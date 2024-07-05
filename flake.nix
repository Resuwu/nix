{
    description = "My system configuration";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

        home-manager = {
            url = "github:nix-community/home-manager/release-24.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
        system = "x86_64-linux";
    in {
        nixosConfigurations.resu-laptop = nixpkgs.lib.nixosSystem {
            specialArgs = { inherit inputs system; };
            modules = [ ./nixos/configuration.nix ];
        };

        homeConfigurations.resu = home-manager.lib.homeManagerConfiguration {
            pkgs = nixpkgs.legacyPackages.${system};
            modules = [ ./home-manager/home.nix ];
        };
    };
}