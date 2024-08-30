{
    programs.fastfetch = {
        enable = true;
        settings = {
            logo = {
                source = "~/nix/home-manager/imgs/ffimage";
                color = {
                    "1" = "cyan";
                };
            };
            modules = [
                "title"
                "separator"
                "os"
                "host"
                {
                    "type" = "kernel";
                    "format" = "{release}";
                }
                "uptime"
                "packages"
                "shell"
                {
                    "type" = "display";
                    "compactType" = "original";
                    "key" = "Resolution";
                }
                "de"
                "wm"
                "wmtheme"
                "theme"
                "icons"
                "terminal"
                {
                    "type" = "terminalfont";
                    "format" = "{/name}{-}{/}{name}{?size} {size}{?}";
                }
                "cpu"
                {
                    "type" = "gpu";
                    "key" = "GPU";
                }
                {
                    "type" = "memory";
                    "format" = "{} / {}";
                }
                "break"
                "colors"
            ];
        };
    };
}