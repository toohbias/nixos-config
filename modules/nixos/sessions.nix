{ pkgs, ... }: {

  services.greetd = {
    enable = true;
    settings = {
      initial_session = {
        command = "Hyprland";
        user = "tobi";
      };
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --sessions";
        user = "greeter";
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
