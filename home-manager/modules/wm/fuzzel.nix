{ programs.fuzzel = {
        enable = true;
        
        settings = {
            main = {
                font = "JetBrains Mono";
                terminal = "alacritty";
            };

            colors = {
                border = "a3be8cff";
                background = "1f2226f2";
                text = "ebcb8bff";
                match = "81a1c1ff";
                selection = "4c566af2";
                selection-text = "eceff4ff";
                selection-match = "8fbcbbff";
            };

            border = {
                width = 3;
                radius = 0;
            };
        };
    };
}