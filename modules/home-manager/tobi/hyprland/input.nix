







{ lib, ...}: let
  func = {key, fn}: {
    _args = [
      (lib.generators.mkLuaInline ''mod .. " + ${key}"'')
      (lib.generators.mkLuaInline fn)
    ];
  };
  execFunc = {key, cmd}: func { key = key; fn = ''hl.dsp.exec_cmd("${cmd}")''; };
  # sendshortcutFunc = {key, mods, sc, window}: func { key = key; fn = ''hl.dsp.send_shortcut("${mods}", "${sc}", "${window}"''; };

  menu = "wofi";
in {
  wayland.windowManager.hyprland = {
    extraConfig = ''
      local mainMod = "SUPER"
    '';
    settings = {
      config = {
        input = {
          kb_layout = "us,de";
          kb_options = "caps:swapescape,grp_led:scroll";
          repeat_delay = 250;
          numlock_by_default = true;

          follow_mouse = 1;
          sensitivity = -1.0;
          force_no_accel = true;
        };

        misc = {
          disable_hyprland_logo = true;
          disable_splash_rendering = true;
        };
      };

      mod._var = "SUPER";

      bind = [
        (execFunc { key = "Return"; cmd = "${menu} --show drun -a"; })
        # "$mainMod, Return, exec, $menu --show drun -a"
        (execFunc { key = "V"; cmd = "cliphist list | ${menu} -S dmenu | cliphist decode | wl-copy"; })
        # "$mainMod, V, exec, cliphist list | $menu -S dmenu | cliphist decode | wl-copy"
        (execFunc { key = "SHIFT + V"; cmd = "cliphist wipe"; })
        # "$mainMod SHIFT, V, exec, cliphist wipe"

        (execFunc { key = "T"; cmd = "kitty"; })
        # "$mainMod, T, exec, $terminal"
        (execFunc { key = "B"; cmd = "chromium"; })
      ];

      # bind = [
      #   execFunc { key = "Return"; cmd = "${menu} --show drun -a"; }
      #   # "$mainMod, Return, exec, $menu --show drun -a"
      #   execFunc { key = "V"; cmd = "cliphist list | ${menu} -S dmenu | cliphist decode | wl-copy"; }
      #   # "$mainMod, V, exec, cliphist list | $menu -S dmenu | cliphist decode | wl-copy"
      #   execFunc { key = "SHIFT + V"; cmd = "cliphist wipe"; }
      #   # "$mainMod SHIFT, V, exec, cliphist wipe"
      #
      #   execFunc { key = "T"; cmd = "kitty"; }
      #   # "$mainMod, T, exec, $terminal"
      #   execFunc { key = "B"; cmd = "chromium"; }
      #   # "$mainMod, B, exec, $browser"
      #   "$mainMod, Q, killactive,"
      #   "$mainMod ALT, M, exit,"
      #   "$mainMod, F, togglefloating,"
      #   "$mainMod SHIFT, F, fullscreen,"
      #   "$mainMod, A, layoutmsg, togglesplit, # dwindle"
      #
      #   "$mainMod, O, setprop, activewindow opaque toggle"
      #
      #   execFunc { key = "Tab"; cmd = "hyprctl switchxkblayout chicony-usb-keyboard next"; }
      #   # "$mainMod, Tab, exec, hyprctl switchxkblayout chicony-usb-keyboard next"
      #
      #   "$mainMod, E, sendshortcut, CTRL SHIFT, m, class:discord"
      #   "$mainMod, E, sendshortcut, , SPACE, class:spotify"
      #   "$mainMod, E, sendshortcut, , SPACE, title:spotify_player"
      #   execFunc { key = "E"; cmd = "hyprlock"; }
      #   # "$mainMod, E, exec, hyprlock"
      #
      #   execFunc { key = "SHIFT + E"; cmd = "hyprlock"; }
      #   # "$mainMod SHIFT, E, exec, hyprlock"
      #
      #   "$mainMod, M, sendshortcut, CTRL SHIFT, m, class:discord"
      #
      #   "$mainMod, P, sendshortcut, , SPACE, class:spotify"
      #   "$mainMod, P, sendshortcut, , SPACE, title:spotify_player"
      #
      #   # Move focus with mainMod + hjkl
      #   "$mainMod, h, movefocus, l"
      #   "$mainMod, l, movefocus, r"
      #   "$mainMod, k, movefocus, u"
      #   "$mainMod, j, movefocus, d"
      #
      #   # Switch workspaces with mainMod + [0-9]
      #   "$mainMod, 1, workspace, 1"
      #   "$mainMod, 2, workspace, 2"
      #   "$mainMod, 3, workspace, 3"
      #   "$mainMod, 4, workspace, 4"
      #   "$mainMod, 5, workspace, 5"
      #   "$mainMod, 6, workspace, 6"
      #   "$mainMod, 7, workspace, 7"
      #   "$mainMod, 8, workspace, 8"
      #   "$mainMod, 9, workspace, 9"
      #   "$mainMod, 0, workspace, 10"
      #
      #   # Move active window to a workspace with mainMod + SHIFT + [0-9]
      #   "$mainMod SHIFT, 1, movetoworkspace, 1"
      #   "$mainMod SHIFT, 2, movetoworkspace, 2"
      #   "$mainMod SHIFT, 3, movetoworkspace, 3"
      #   "$mainMod SHIFT, 4, movetoworkspace, 4"
      #   "$mainMod SHIFT, 5, movetoworkspace, 5"
      #   "$mainMod SHIFT, 6, movetoworkspace, 6"
      #   "$mainMod SHIFT, 7, movetoworkspace, 7"
      #   "$mainMod SHIFT, 8, movetoworkspace, 8"
      #   "$mainMod SHIFT, 9, movetoworkspace, 9"
      #   "$mainMod SHIFT, 0, movetoworkspace, 10"
      #
      #   "$mainMod SHIFT, h, swapwindow, l"
      #   "$mainMod SHIFT, j, swapwindow, d"
      #   "$mainMod SHIFT, k, swapwindow, u"
      #   "$mainMod SHIFT, l, swapwindow, r"
      #
      #   "$mainMod CTRL, h, movecurrentworkspacetomonitor, l"
      #   "$mainMod CTRL, j, movecurrentworkspacetomonitor, d"
      #   "$mainMod CTRL, j, movecurrentworkspacetomonitor, u"
      #   "$mainMod CTRL, l, movecurrentworkspacetomonitor, r"
      #
      #   # Resize windows with mainMod + ALT + hjkl
      #   "$mainMod ALT, h, resizeactive, -10 0"
      #   "$mainMod ALT, j, resizeactive, 0 10"
      #   "$mainMod ALT, k, resizeactive, 0 -10"
      #   "$mainMod ALT, l, resizeactive, 10 0"
      #
      #   # Example special workspace (scratchpad)
      #   "$mainMod, S, togglespecialworkspace, magic"
      #   "$mainMod SHIFT, S, movetoworkspace, special:magic"
      #
      #   # Scroll through existing workspaces with mainMod + scroll
      #   "$mainMod, mouse_down, workspace, e+1"
      #   "$mainMod, mouse_up, workspace, e-1"
      #
      #   execFunc { key = "SHIFT + W"; cmd = "hyprshot -o ~/pic/Screenshots -m window"; }
      #   # "$mainMod SHIFT, W, exec, hyprshot -o ~/pic/Screenshots -m window"
      #   execFunc { key = "SHIFT + R"; cmd = "hyprshot -o ~/pic/Screenshots -m region"; }
      #   # "$mainMod SHIFT, R, exec, hyprshot -o ~/pic/Screenshots -m region"
      #   execFunc { key = "SHIFT + M"; cmd = "hyprshot -o ~/pic/Screenshots -m output"; }
      #   # "$mainMod SHIFT, M, exec, hyprshot -o ~/pic/Screenshots -m output"
      #   execFunc { key = "SHIFT + A"; cmd = "hyprshot -o ~/pic/Screenshots -m active"; }
      #   # "$mainMod SHIFT, A, exec, hyprshot -o ~/pic/Screenshots -m active"
      # ];
      
      # bindm = [
      #   # Move/resize windows with mainMod + LMB/RMB and dragging
      #   "$mainMod, mouse:272, movewindow"
      #   "$mainMod, mouse:273, resizewindow"
      # ];
    };
  };
}
