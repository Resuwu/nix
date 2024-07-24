{ programs.alacritty = {
        enable = true;
        
        settings = {
            window.opacity = 0.9;

            font = {
                size = 13.0;
                normal = {
                    family = "JetBrains Mono";
                    style = "SemiBold";
                };
            };

            colors.primary.background = "#1f2226";
        };
    };
}