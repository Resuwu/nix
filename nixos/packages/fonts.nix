{ pkgs, ... }: {
    fonts.packages = with pkgs; [
	    jetbrains-mono
        powerline-fonts
        powerline-symbols
        font-awesome
	    (nerdfonts.override { 
            fonts = [ "NerdFontsSymbolsOnly" ];
        })
    ];
}