{
  services.xserver = {
    enable = true;

#   displayManager.gdm = {
#     enable = true;
#     wayland = true;
#   };
  };

  services.displayManager = {
    autoLogin = {
      enable = true;
      user = "tobi";
    };
    defaultSession = "hyprland-uwsm";
  };

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
}
