{ pkgs, ... }: {
	gtk = {
		enable = true;
		theme = {
			package = (pkgs.catppuccin-gtk.override {
      			accents = [ "green" ];
      			size = "standard";
      			variant = "mocha";
    		});
			name = "catppuccin-mocha-green-standard";
		};
	};
	
    home = {
		pointerCursor = {
		    package = pkgs.bibata-cursors;
		    name = "Bibata-Modern-Classic";

		    size = 24;
			
		    gtk.enable = true;
		    x11.enable = true;
		};
    };
}
