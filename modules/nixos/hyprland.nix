{
  services.xserver = {
    enable = true;

#   displayManager.gdm = {
#     enable = true;
#     wayland = true;
#   };
  };

  services.displayManager.autoLogin = {
    enable = true;
  };

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
}
