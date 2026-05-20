{ pkgs-unstable, ...}: {

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs-unstable.hyprland;
  };

  xdg.configFile."hypr/hyprland.conf".force = true;

}
