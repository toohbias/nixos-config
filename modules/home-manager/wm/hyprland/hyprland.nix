{ inputs , pkgs, ... }: {

  wayland.windowManager.hyprland = {
    enable = true;
  };

  xdg.configFile."hypr/hyprland.conf".force = true;

}
