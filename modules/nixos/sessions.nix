{ pkgs, ...}: {

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        # command = "Hyprland";
        # user = "tobi";
        command = "${pkgs.wlgreet}/bin/gtkgreet -l -c Hyprland";
        user = "greeter";
      };
    };
  };

}
