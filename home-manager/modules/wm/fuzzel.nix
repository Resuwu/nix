{ programs.fuzzel = {
        enable = true;
        
        settings = {
            main = {
                font = "JetBrains Mono";
                terminal = "alacritty";
            };

            colors = {
                border = "dbb800f2";
                background = "1f2226f2";
                text = "ebcb8bff";
                selection = "4c566af2";
                selection-text = "eceff4ff";
                selection-match = "81a1c1ff";
            };

            border = {
                width = 3;
                radius = 10;
            };
        };
    };
}