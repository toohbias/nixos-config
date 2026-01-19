{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "hyprlock"
      "waybar"
      # "hyprpaper"
      "wl-paste --type text --watch cliphist store"
      "wl-paste --type image --watch cliphist store"
    ];
  };
}
