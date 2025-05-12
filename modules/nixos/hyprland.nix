{
  services.xserver = {
    enable = true;

#   displayManager.gdm = {
#     enable = true;
#     wayland = true;
#   };
  };

  services.displayManager = {
    enable = true;
    autoLogin = {
      enable = true;
      user = "tobi";
    };
    defaultSession = "none+hyprland-uwsm";
  };

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
}
