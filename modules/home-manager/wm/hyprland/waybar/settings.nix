{
  programs.waybar.settings.mainBar = {
    layer = "top";
    position = "top";
    height = 25;

    modules_left = [
      #       "custom/launcher"
      #       "wlr/taskbar"
    ];

    modules_center = [
      #       "hyprland/workspaces"
    ];

    modules_right = [
      #       "cpu"
      #       "pulseaudio"
      "clock"
    ];

    #     "custom/launcher" = {
    #       format = "";
    #       on-click = "wofi --show drun";
    #       tooltip = false;
    #     };

    #     "wlr/taskbar" = {
    #       format = "{icon}";
    #       on-click = "activate";
    #     };

    #     "hyprland/workspaces" = {
    #       format = "{windows}";
    #       window-rewrite-default = "";
    #       window-rewrite = {
    #         "class<ungoogled-chromium>" = "";
    #         "class<ungoogled-chromium> title<.*github.*>" = "󰊤";
    #         "kitty" = "";
    #       };
    #     };

    clock = {
      format = "{:%R  %A %b %d}";
    };
  };
}
