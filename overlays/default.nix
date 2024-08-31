{ config, pkgs, lib, ... }: {
    nixpkgs.overlays = [
	(final: prev: {
	    spoofdpi = prev.callPackage ../nixos/packages/custom/spoofdpi;
	})
    ];
}
