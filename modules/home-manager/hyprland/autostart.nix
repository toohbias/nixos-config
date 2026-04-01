{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "hyprlock"
      "waybar"
      "wl-paste --type text --watch cliphist store"
      "wl-paste --type image --watch cliphist store"
    ];
  };
}
