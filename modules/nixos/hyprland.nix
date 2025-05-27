{
  services.xserver = {
    enable = true;
  };

  services.greetd = {
    enable = true;
    settings = {
      initial_session = {
        command = "Hyprland";
        user = "tobi";
      };
      default_session = {
        command = "startxfce4 --wayland";
        user = "tobi";
      };
    };
  };

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
}
