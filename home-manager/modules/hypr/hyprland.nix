{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {
      #Monitors
      monitor = ",1920x1080@60,auto,1";

      #Autostart
      exec-once = "bash ~/nix/home-manager/scripts/start.sh";

      #Env variables
      env = [
        "GDK_BACKEND,wayland,x11"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "XDG_CONFIG_HOME,$HOME/.config"
        "XDG_DATA_HOME,$HOME/.local/share"
        "XDG_STATE_HOME,$HOME/.local/state"
        "XDG_CACHE_HOME,$HOME/.cache"
        "QT_QPA_PLATFORM,wayland;xcb"
        "QT_WAYLAND_DISABLE_DECORATION,1"
        "QT_ENABLE_HIGHDPI_SCALING,1"
        "MOZ_ENABLE_WAYLAND,1"
      ];

      windowrule = [
        "tile, ^(pobfrontend)$"
        "tile, ^(xfreerdp)$"
      ];

      #Input
      input = {
        kb_layout = "us,ru";
        kb_options = "grp:alt_shift_toggle";

        follow_mouse = 1;

        touchpad = {
          natural_scroll = true;
          middle_button_emulation = true;
          scroll_factor = 0.8;
        };
      };

      #Appearance
      general = {
        gaps_in = 3;
        gaps_out = 7;
        border_size = 3;
        "col.active_border" = "rgba(a3be8cff)";
        "col.inactive_border" = "rgba(7a7a7acc)";
        no_border_on_floating = true;
        layout = "dwindle";
      };

      decoration = {
        rounding = 0;
      };

      dwindle = {
        pseudotile = true; # Master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = true; # You probably want this
      };

      master = {
        new_status = "master";
      };

      #Cursor
      cursor = {
        hide_on_key_press = true;
        warp_on_change_workspace = true;
      };

      #Misc
      misc = {
        disable_hyprland_logo = true;
        animate_manual_resizes = true;
        animate_mouse_windowdragging = true;
        enable_swallow = true;
        swallow_regex = "^(Alacritty)$";
      };

      #Gestures
      gestures = {
        workspace_swipe = true;
        workspace_swipe_distance = 160;
        workspace_swipe_forever = true;
      };

      #Programs
      "$terminal" = "alacritty";
      "$menu" = "fuzzel";
      "$locker" = "swaylock-fancy -f jetbrains-mono --daemonize";

      #Binds
      "$mainMod" = "SUPER";
      bind = [
        "$mainMod, Q, exec, $terminal"
        "$mainMod, C, killactive,"
        "$mainMod, M, exit,"
        "$mainMod, V, togglefloating,"
        "$mainMod, R, exec, $menu"
        "$mainMod, P, pseudo, # dwindle"
        "$mainMod, J, togglesplit, # dwindle"
        "$mainMod, L, exec, $locker"

        # Screenshooting
        '', PRINT, exec, grim - | wl-copy && notify-send -e "Screenshot saved to clipboard"''
        ''$mainMod SHIFT, S, exec, grim -g "$(slurp)" - | wl-copy && notify-send -e "Screenshot saved to clipboard"''
        ''$mainMod SHIFT, PRINT, exec, grim -g "$(slurp)" - | swappy -f - -o - | wl-copy && notify-send -e "Screenshot saved to clipboard"''

        # Move focus with mainMod + arrow keys
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # Moving windows
        "$mainMod SHIFT, left,  swapwindow, l"
        "$mainMod SHIFT, right, swapwindow, r"
        "$mainMod SHIFT, up,    swapwindow, u"
        "$mainMod SHIFT, down,  swapwindow, d"

        # Window resizing                     X  Y
        "$mainMod CTRL, left,  resizeactive, -60 0"
        "$mainMod CTRL, right, resizeactive,  60 0"
        "$mainMod CTRL, up,    resizeactive,  0 -60"
        "$mainMod CTRL, down,  resizeactive,  0  60"

        # Switch workspaces with mainMod + [0-9]
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        # Scroll through existing workspaces with mainMod + scroll
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
    };
  };
}
