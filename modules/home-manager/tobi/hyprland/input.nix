{ lib, ...}: let
  # what is this abomination
  func = {key, fn}: {
    _args = [
      (lib.generators.mkLuaInline ''mod .. " + ${key}"'')
      (lib.generators.mkLuaInline ''hl.dsp.${fn}'')
    ];
  };
  execFunc = {key, cmd}: func { key = key; fn = ''exec_cmd("${cmd}")''; };
  sendshortcutFunc = {key, mods, sc, window}: func { key = key; fn = ''send_shortcut({ mods = "${mods}", key = "${sc}", window = "${window}" })''; };
  focusFunc = {key, inst, val}: func { key = key; fn = ''focus({ ${inst} = ${val} })''; };
  windowFunc = {key, inst, param}: func { key = key; fn = ''window.${inst}(${param})''; };
  workspaceFunc = {key, inst, param}: func { key = key; fn = ''workspace.${inst}(${param})''; };

  menu = "wofi";
  terminal = "kitty";
  browser = "chromium";
in {
  wayland.windowManager.hyprland = {
    extraConfig = ''local mainMod = "SUPER"'';
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

        (execFunc { key = "T"; cmd = "${terminal}"; })
        # "$mainMod, T, exec, $terminal"
        (execFunc { key = "B"; cmd = "${browser}"; })
        # "$mainMod, B, exec, $browser"
        (windowFunc { key = "Q"; inst = "close"; param = ""; })
        # "$mainMod, Q, killactive,"
        (func { key = "ALT + M"; fn = "exit()"; })
        # "$mainMod ALT, M, exit,"
        (windowFunc { key = "F"; inst = "float"; param = "{ action = \"toggle\" }"; })
        # "$mainMod, F, togglefloating,"
        (windowFunc { key = "SHIFT + F"; inst = "fullscreen"; param = "{ mode = \"fullscreen\", action = \"toggle\" }"; })
        # "$mainMod SHIFT, F, fullscreen,"
        (func { key = "A"; fn = "layout(\"togglesplit\")"; })
        # "$mainMod, A, layoutmsg, togglesplit, # dwindle"

        (windowFunc { key = "O"; inst = "set_prop"; param = "{ prop = \"opaque\", value = \"toggle\", window = \"activewindow\" }"; })
        # "$mainMod, O, setprop, activewindow opaque toggle"

        (execFunc { key = "Tab"; cmd = "hyprctl switchxkblayout chicony-usb-keyboard next"; })
        # "$mainMod, Tab, exec, hyprctl switchxkblayout chicony-usb-keyboard next"

        (sendshortcutFunc { key = "E"; mods = "CTRL + SHIFT"; sc = "m"; window = "class:discord"; })
        # "$mainMod, E, sendshortcut, CTRL SHIFT, m, class:discord"
        (sendshortcutFunc { key = "E"; mods = ""; sc = "SPACE"; window = "class:spotify"; })
        # "$mainMod, E, sendshortcut, , SPACE, class:spotify"
        (sendshortcutFunc { key = "E"; mods = ""; sc = "SPACE"; window = "class:spotify_player"; })
        # "$mainMod, E, sendshortcut, , SPACE, title:spotify_player"
        (execFunc { key = "E"; cmd = "hyprlock"; })
        # "$mainMod, E, exec, hyprlock"

        (execFunc { key = "SHIFT + E"; cmd = "hyprlock"; })
        # "$mainMod SHIFT, E, exec, hyprlock"

        (sendshortcutFunc { key = "M"; mods = "CTRL + SHIFT"; sc = "m"; window = "class:discord"; })
        # "$mainMod, M, sendshortcut, CTRL SHIFT, m, class:discord"

        (sendshortcutFunc { key = "P"; mods = ""; sc = "SPACE"; window = "class:spotify"; })
        # "$mainMod, P, sendshortcut, , SPACE, class:spotify"
        (sendshortcutFunc { key = "P"; mods = ""; sc = "SPACE"; window = "class:spotify_player"; })
        # "$mainMod, P, sendshortcut, , SPACE, title:spotify_player"

        # Move focus with mainMod + hjkl
        (focusFunc { key = "h"; inst = "direction"; val = "\"left\""; })
        # "$mainMod, h, movefocus, l"
        (focusFunc { key = "l"; inst = "direction"; val = "\"right\""; })
        # "$mainMod, l, movefocus, r"
        (focusFunc { key = "k"; inst = "direction"; val = "\"up\""; })
        # "$mainMod, k, movefocus, u"
        (focusFunc { key = "j"; inst = "direction"; val = "\"down\""; })
        # "$mainMod, j, movefocus, d"

        # Switch workspaces with mainMod + [0-9]
        (focusFunc { key = "1"; inst = "workspace"; val = "1"; })
        # "$mainMod, 1, workspace, 1"
        (focusFunc { key = "2"; inst = "workspace"; val = "2"; })
        # "$mainMod, 2, workspace, 2"
        (focusFunc { key = "3"; inst = "workspace"; val = "3"; })
        # "$mainMod, 3, workspace, 3"
        (focusFunc { key = "4"; inst = "workspace"; val = "4"; })
        # "$mainMod, 4, workspace, 4"
        (focusFunc { key = "5"; inst = "workspace"; val = "5"; })
        # "$mainMod, 5, workspace, 5"
        (focusFunc { key = "6"; inst = "workspace"; val = "6"; })
        # "$mainMod, 6, workspace, 6"
        (focusFunc { key = "7"; inst = "workspace"; val = "7"; })
        # "$mainMod, 7, workspace, 7"
        (focusFunc { key = "8"; inst = "workspace"; val = "8"; })
        # "$mainMod, 8, workspace, 8"
        (focusFunc { key = "9"; inst = "workspace"; val = "9"; })
        # "$mainMod, 9, workspace, 9"
        (focusFunc { key = "0"; inst = "workspace"; val = "10"; })
        # "$mainMod, 0, workspace, 10"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        (windowFunc { key = "SHIFT + 1"; inst = "move"; param = "{ workspace = 1 }"; })
        # "$mainMod SHIFT, 1, movetoworkspace, 1"
        (windowFunc { key = "SHIFT + 2"; inst = "move"; param = "{ workspace = 2 }"; })
        # "$mainMod SHIFT, 2, movetoworkspace, 2"
        (windowFunc { key = "SHIFT + 3"; inst = "move"; param = "{ workspace = 3 }"; })
        # "$mainMod SHIFT, 3, movetoworkspace, 3"
        (windowFunc { key = "SHIFT + 4"; inst = "move"; param = "{ workspace = 4 }"; })
        # "$mainMod SHIFT, 4, movetoworkspace, 4"
        (windowFunc { key = "SHIFT + 5"; inst = "move"; param = "{ workspace = 5 }"; })
        # "$mainMod SHIFT, 5, movetoworkspace, 5"
        (windowFunc { key = "SHIFT + 6"; inst = "move"; param = "{ workspace = 6 }"; })
        # "$mainMod SHIFT, 6, movetoworkspace, 6"
        (windowFunc { key = "SHIFT + 7"; inst = "move"; param = "{ workspace = 7 }"; })
        # "$mainMod SHIFT, 7, movetoworkspace, 7"
        (windowFunc { key = "SHIFT + 8"; inst = "move"; param = "{ workspace = 8 }"; })
        # "$mainMod SHIFT, 8, movetoworkspace, 8"
        (windowFunc { key = "SHIFT + 9"; inst = "move"; param = "{ workspace = 9 }"; })
        # "$mainMod SHIFT, 9, movetoworkspace, 9"
        (windowFunc { key = "SHIFT + 0"; inst = "move"; param = "{ workspace = 10 }"; })
        # "$mainMod SHIFT, 0, movetoworkspace, 10"

        (windowFunc { key = "SHIFT + h"; inst = "move"; param = "{ direction = \"left\" }"; })
        # "$mainMod SHIFT, h, swapwindow, l"
        (windowFunc { key = "SHIFT + j"; inst = "move"; param = "{ direction = \"down\" }"; })
        # "$mainMod SHIFT, j, swapwindow, d"
        (windowFunc { key = "SHIFT + k"; inst = "move"; param = "{ direction = \"up\" }"; })
        # "$mainMod SHIFT, k, swapwindow, u"
        (windowFunc { key = "SHIFT + l"; inst = "move"; param = "{ direction = \"right\" }"; })
        # "$mainMod SHIFT, l, swapwindow, r"

        (windowFunc { key = "CTRL + h"; inst = "move"; param = "{ direction = \"left\" }"; })
        # "$mainMod CTRL, h, movecurrentworkspacetomonitor, l"
        (windowFunc { key = "CTRL + j"; inst = "move"; param = "{ direction = \"down\" }"; })
        # "$mainMod CTRL, j, movecurrentworkspacetomonitor, d"
        (windowFunc { key = "CTRL + k"; inst = "move"; param = "{ direction = \"up\" }"; })
        # "$mainMod CTRL, k, movecurrentworkspacetomonitor, u"
        (windowFunc { key = "CTRL + l"; inst = "move"; param = "{ direction = \"right\" }"; })
        # "$mainMod CTRL, l, movecurrentworkspacetomonitor, r"

        # Resize windows with mainMod + ALT + hjkl
        (windowFunc { key = "ALT + h"; inst = "resize"; param = "{ x = -10, y = 0, relative = true }"; })
        # "$mainMod ALT, h, resizeactive, -10 0"
        (windowFunc { key = "ALT + j"; inst = "resize"; param = "{ x = 0, y = 10, relative = true }"; })
        # "$mainMod ALT, j, resizeactive, 0 10"
        (windowFunc { key = "ALT + k"; inst = "resize"; param = "{ x = 0, y = -10, relative = true }"; })
        # "$mainMod ALT, k, resizeactive, 0 -10"
        (windowFunc { key = "ALT + l"; inst = "resize"; param = "{ x = 10, y = 0, relative = true }"; })
        # "$mainMod ALT, l, resizeactive, 10 0"

        # Example special workspace (scratchpad)
        (workspaceFunc { key = "S"; inst = "toggle_special"; param = "\"magic\""; })
        # "$mainMod, S, togglespecialworkspace, magic"
        (windowFunc { key = "SHIFT + S"; inst = "move"; param = "{ workspace = \"special:magic\" }"; })
        # "$mainMod SHIFT, S, movetoworkspace, special:magic"

        # Scroll through existing workspaces with mainMod + scroll
        (focusFunc { key = "mouse_down"; inst = "workspace"; val = "\"e+1\""; })
        # "$mainMod, mouse_down, workspace, e+1"
        (focusFunc { key = "mouse_up"; inst = "workspace"; val = "\"e-1\""; })
        # "$mainMod, mouse_up, workspace, e-1"

        (execFunc { key = "SHIFT + W"; cmd = "hyprshot -o ~/pic/Screenshots -m window"; })
        # "$mainMod SHIFT, W, exec, hyprshot -o ~/pic/Screenshots -m window"
        (execFunc { key = "SHIFT + R"; cmd = "hyprshot -o ~/pic/Screenshots -m region"; })
        # "$mainMod SHIFT, R, exec, hyprshot -o ~/pic/Screenshots -m region"
        (execFunc { key = "SHIFT + M"; cmd = "hyprshot -o ~/pic/Screenshots -m output"; })
        # "$mainMod SHIFT, M, exec, hyprshot -o ~/pic/Screenshots -m output"
        (execFunc { key = "SHIFT + A"; cmd = "hyprshot -o ~/pic/Screenshots -m active"; })
        # "$mainMod SHIFT, A, exec, hyprshot -o ~/pic/Screenshots -m active"

        (windowFunc { key = "mouse:272"; inst = "drag"; param = ""; })
        (windowFunc { key = "mouse:273"; inst = "resize"; param = ""; })
      ];
    };
  };
}
