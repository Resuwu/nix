{
  config,
  pkgs,
  ...
}: {
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set theme_color_scheme nord
      set theme_display_user yes
      set theme_newline_cursor yes
      set theme_newline_prompt " > "
    '';

    shellAliases = let
      flakeDir = "~/nix";
    in {
      rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
      upd = "sudo nix flake update ${flakeDir}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
      hms = "home-manager switch --flake ${flakeDir}";

      sht = "shutdown now";

      cls = "clear";
      ff = "fastfetch";
      spoof = "spoofdpi -port 8081";
      work-rdp = "~/.rdp/work-rdp.sh";
    };

    plugins = [
      {
        name = "fzf";
        src = pkgs.fishPlugins.fzf-fish.src;
      }
      {
        name = "autopair";
        src = pkgs.fishPlugins.autopair.src;
      }
      {
        name = "sponge";
        src = pkgs.fishPlugins.sponge.src;
      }
      {
        name = "git";
        src = pkgs.fishPlugins.plugin-git.src;
      }
      {
        name = "bobthefish";
        src = pkgs.fishPlugins.bobthefish.src;
      }
    ];
  };
}
