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

  programs.uwsm = {
    enable = true;
    waylandCompositors = {
      hyprland = {
        prettyName = "Hyprland";
        comment = "Hyprland compositor managed by UWSM";
        binPath = "/run/current-system/sw/bin/Hyprland";
      };
      xfce = {
        prettyName = "Xfce";
        comment = "Xfce compositor managed by UWSM";
        binPath = "/run/current-system/sw/bin/startxfce4";
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
    xwayland.enable = true;
  };

}
