{

  programs.waybar.settings = {
#   layer = "top";
#   position = "top";

    modules_left = [
      "hyprland/window"
    ];

    modules_center = [
      "wlr/taskbar"
      "hyprland/workspaces"
    ];

    modules_right = [
      "cpu"
      "pulseaudio"
      "clock"
    ];

    "wlr/taskbar" = {
      format = "{icon}";
      tooltop = false;
    };
  };

}
