{
  services.xserver = {
    enable = true;

#   displayManager.gdm = {
#     enable = true;
#     wayland = true;
#   };
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "Hyprland";
        user = "tobi";
      };
#     default_session = initial_session;
    };
  };

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
}
