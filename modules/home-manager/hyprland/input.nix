{
  wayland.windowManager.hyprland.settings = {
    input = {
      kb_layout = "us,de";
      kb_options = "caps:swapescape,grp_led:scroll";
      numlock_by_default = true;

      follow_mouse = 1;
      sensitivity = -1.0;
      force_no_accel = true;
    };

    "$mainMod" = "SUPER";

    bind = [
      # Open random apps
      "$mainMod, Return, exec, $menu --show drun -a"
      "$mainMod, V, exec, cliphist list | wofi -S dmenu | cliphist decode | wl-copy"

      "$mainMod, T, exec, $terminal"
      "$mainMod, B, exec, $browser"
      "$mainMod, Q, killactive,"
      "$mainMod, M, exit,"
      "$mainMod, F, togglefloating,"
      "$mainMod, A, togglesplit, # dwindle"

      "$mainMod, Tab, exec, hyprctl switchxkblayout chicony-usb-keyboard next"

      # Move focus with mainMod + arrow keys
      "$mainMod, h, movefocus, l"
      "$mainMod, l, movefocus, r"
      "$mainMod, k, movefocus, u"
      "$mainMod, j, movefocus, d"

      # Switch workspaces with mainMod + [0-9]
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
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

      "$mainMod SHIFT, h, movecurrentworkspacetomonitor, l"
      "$mainMod SHIFT, l, movecurrentworkspacetomonitor, r"

      # Example special workspace (scratchpad)
      "$mainMod, S, togglespecialworkspace, magic"
      "$mainMod SHIFT, S, movetoworkspace, special:magic"

      # Scroll through existing workspaces with mainMod + scroll
      "$mainMod, mouse_down, workspace, e+1"
      "$mainMod, mouse_up, workspace, e-1"
    ];

    bindm = [
      # Move/resize windows with mainMod + LMB/RMB and dragging
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];
  };
}
