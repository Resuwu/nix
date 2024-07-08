{ pkgs, ... }: {
    home = {
	pointerCursor = {
	    package = pkgs.bibata-cursors;
	    name = "Bibata-Modern-Classic";
	    size = 27;
	    gtk.enable = true;
	    x11 = {
	        enable = true;
		defaultCursor = true;
	    };
	};
    };
}
