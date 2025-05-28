{

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "Hyprland";
        user = "tobi";
      };
    };
  };

  services.xserver = {
    enable = true;
    desktopManager.xfce = {
      enable = true;
      enableWaylandSession = true;
    };
  };

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

}
