{ pkgs, ...}: {

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        # command = "Hyprland";
        # user = "tobi";
        command = "${pkgs.gtkgreet}/bin/gtkgreet --cmd Hyprland";
        user = "greeter";
      };
    };
  };

}
