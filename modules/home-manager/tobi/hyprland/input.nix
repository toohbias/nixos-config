{ lib, ... }:
let
  # what is this abomination
  func = { key, fn }: {
    _args = [
      (lib.generators.mkLuaInline ''mod .. " + ${key}"'')
      (lib.generators.mkLuaInline "hl.dsp.${fn}")
    ];
  };
  execFunc =
    { key, cmd }:
    func {
      key = key;
      fn = ''exec_cmd("${cmd}")'';
    };
  sendshortcutFunc =
    {
      key,
      mods,
      sc,
      window,
    }:
    func {
      key = key;
      fn = ''send_shortcut({ mods = "${mods}", key = "${sc}", window = "${window}" })'';
    };
  focusFunc =
    {
      key,
      inst,
      val,
    }:
    func {
      key = key;
      fn = "focus({ ${inst} = ${val} })";
    };
  windowFunc =
    {
      key,
      inst,
      param,
    }:
    func {
      key = key;
      fn = "window.${inst}(${param})";
    };
  workspaceFunc =
    {
      key,
      inst,
      param,
    }:
    func {
      key = key;
      fn = "workspace.${inst}(${param})";
    };

  menu = "wofi";
  terminal = "kitty";
  browser = "chromium";
in
{
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
        (execFunc {
          key = "Return";
          cmd = "${menu} --show drun -a";
        })
        (execFunc {
          key = "V";
          cmd = "cliphist list | ${menu} -S dmenu | cliphist decode | wl-copy";
        })
        (execFunc {
          key = "SHIFT + V";
          cmd = "cliphist wipe";
        })

        (execFunc {
          key = "T";
          cmd = "${terminal}";
        })
        (execFunc {
          key = "B";
          cmd = "${browser}";
        })
        (windowFunc {
          key = "Q";
          inst = "close";
          param = "";
        })
        (func {
          key = "ALT + M";
          fn = "exit()";
        })
        (windowFunc {
          key = "F";
          inst = "float";
          param = "{ action = \"toggle\" }";
        })
        (windowFunc {
          key = "SHIFT + F";
          inst = "fullscreen";
          param = "{ mode = \"fullscreen\", action = \"toggle\" }";
        })
        (func {
          key = "A";
          fn = "layout(\"togglesplit\")";
        })

        (windowFunc {
          key = "O";
          inst = "set_prop";
          param = "{ prop = \"opaque\", value = \"toggle\", window = \"activewindow\" }";
        })

        (execFunc {
          key = "Tab";
          cmd = "hyprctl switchxkblayout chicony-usb-keyboard next";
        })

        (sendshortcutFunc {
          key = "E";
          mods = "CTRL + SHIFT";
          sc = "m";
          window = "class:discord";
        })
        (sendshortcutFunc {
          key = "E";
          mods = "";
          sc = "SPACE";
          window = "class:spotify";
        })
        (sendshortcutFunc {
          key = "E";
          mods = "";
          sc = "SPACE";
          window = "title:spotify_player";
        })
        (execFunc {
          key = "E";
          cmd = "hyprlock";
        })

        (execFunc {
          key = "SHIFT + E";
          cmd = "hyprlock";
        })

        (sendshortcutFunc {
          key = "M";
          mods = "CTRL + SHIFT";
          sc = "m";
          window = "class:discord";
        })

        (sendshortcutFunc {
          key = "P";
          mods = "";
          sc = "SPACE";
          window = "class:spotify";
        })
        (sendshortcutFunc {
          key = "P";
          mods = "";
          sc = "SPACE";
          window = "title:spotify_player";
        })

        # Move focus with mainMod + hjkl
        (focusFunc {
          key = "h";
          inst = "direction";
          val = "\"left\"";
        })
        (focusFunc {
          key = "l";
          inst = "direction";
          val = "\"right\"";
        })
        (focusFunc {
          key = "k";
          inst = "direction";
          val = "\"up\"";
        })
        (focusFunc {
          key = "j";
          inst = "direction";
          val = "\"down\"";
        })

        # Switch workspaces with mainMod + [0-9]
        (focusFunc {
          key = "1";
          inst = "workspace";
          val = "1";
        })
        (focusFunc {
          key = "2";
          inst = "workspace";
          val = "2";
        })
        (focusFunc {
          key = "3";
          inst = "workspace";
          val = "3";
        })
        (focusFunc {
          key = "4";
          inst = "workspace";
          val = "4";
        })
        (focusFunc {
          key = "5";
          inst = "workspace";
          val = "5";
        })
        (focusFunc {
          key = "6";
          inst = "workspace";
          val = "6";
        })
        (focusFunc {
          key = "7";
          inst = "workspace";
          val = "7";
        })
        (focusFunc {
          key = "8";
          inst = "workspace";
          val = "8";
        })
        (focusFunc {
          key = "9";
          inst = "workspace";
          val = "9";
        })
        (focusFunc {
          key = "0";
          inst = "workspace";
          val = "10";
        })

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        (windowFunc {
          key = "SHIFT + 1";
          inst = "move";
          param = "{ workspace = 1 }";
        })
        (windowFunc {
          key = "SHIFT + 2";
          inst = "move";
          param = "{ workspace = 2 }";
        })
        (windowFunc {
          key = "SHIFT + 3";
          inst = "move";
          param = "{ workspace = 3 }";
        })
        (windowFunc {
          key = "SHIFT + 4";
          inst = "move";
          param = "{ workspace = 4 }";
        })
        (windowFunc {
          key = "SHIFT + 5";
          inst = "move";
          param = "{ workspace = 5 }";
        })
        (windowFunc {
          key = "SHIFT + 6";
          inst = "move";
          param = "{ workspace = 6 }";
        })
        (windowFunc {
          key = "SHIFT + 7";
          inst = "move";
          param = "{ workspace = 7 }";
        })
        (windowFunc {
          key = "SHIFT + 8";
          inst = "move";
          param = "{ workspace = 8 }";
        })
        (windowFunc {
          key = "SHIFT + 9";
          inst = "move";
          param = "{ workspace = 9 }";
        })
        (windowFunc {
          key = "SHIFT + 0";
          inst = "move";
          param = "{ workspace = 10 }";
        })

        (windowFunc {
          key = "SHIFT + h";
          inst = "move";
          param = "{ direction = \"left\" }";
        })
        (windowFunc {
          key = "SHIFT + j";
          inst = "move";
          param = "{ direction = \"down\" }";
        })
        (windowFunc {
          key = "SHIFT + k";
          inst = "move";
          param = "{ direction = \"up\" }";
        })
        (windowFunc {
          key = "SHIFT + l";
          inst = "move";
          param = "{ direction = \"right\" }";
        })

        (windowFunc {
          key = "CTRL + h";
          inst = "move";
          param = "{ direction = \"left\" }";
        })
        (windowFunc {
          key = "CTRL + j";
          inst = "move";
          param = "{ direction = \"down\" }";
        })
        (windowFunc {
          key = "CTRL + k";
          inst = "move";
          param = "{ direction = \"up\" }";
        })
        (windowFunc {
          key = "CTRL + l";
          inst = "move";
          param = "{ direction = \"right\" }";
        })

        # Resize windows with mainMod + ALT + hjkl
        (windowFunc {
          key = "ALT + h";
          inst = "resize";
          param = "{ x = -10, y = 0, relative = true }";
        })
        (windowFunc {
          key = "ALT + j";
          inst = "resize";
          param = "{ x = 0, y = 10, relative = true }";
        })
        (windowFunc {
          key = "ALT + k";
          inst = "resize";
          param = "{ x = 0, y = -10, relative = true }";
        })
        (windowFunc {
          key = "ALT + l";
          inst = "resize";
          param = "{ x = 10, y = 0, relative = true }";
        })

        # Example special workspace (scratchpad)
        (workspaceFunc {
          key = "S";
          inst = "toggle_special";
          param = "\"magic\"";
        })
        (windowFunc {
          key = "SHIFT + S";
          inst = "move";
          param = "{ workspace = \"special:magic\" }";
        })

        # Scroll through existing workspaces with mainMod + scroll
        (focusFunc {
          key = "mouse_down";
          inst = "workspace";
          val = "\"e+1\"";
        })
        (focusFunc {
          key = "mouse_up";
          inst = "workspace";
          val = "\"e-1\"";
        })

        (execFunc {
          key = "SHIFT + W";
          cmd = "hyprshot -o ~/pic/Screenshots -m window";
        })
        (execFunc {
          key = "SHIFT + R";
          cmd = "hyprshot -o ~/pic/Screenshots -m region";
        })
        (execFunc {
          key = "SHIFT + M";
          cmd = "hyprshot -o ~/pic/Screenshots -m output";
        })
        (execFunc {
          key = "SHIFT + A";
          cmd = "hyprshot -o ~/pic/Screenshots -m active";
        })

        (windowFunc {
          key = "mouse:272";
          inst = "drag";
          param = "";
        })
        (windowFunc {
          key = "mouse:273";
          inst = "resize";
          param = "";
        })
      ];
    };
  };
}
