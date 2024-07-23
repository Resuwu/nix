{ pkgs, ... }: {
    fonts.packages = with pkgs; [
	    jetbrains-mono
        powerline-fonts
        powerline-symbols
	    (nerdfonts.override { 
            fonts = [ "NerdFontsSymbolsOnly" ];
        })
    ];
}