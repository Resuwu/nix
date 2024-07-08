{ programs.fuzzel = {
        enable = true;
        
        settings = {
            main = {
                font = "JetBrains Mono:weight=SemiBold:size=13";
                terminal = "alacritty";
            };

            colors = {
                border = "eb9c00f2";
            };

            border = {
                width = 3;
                radius = 10;
            };
        };
    };
}