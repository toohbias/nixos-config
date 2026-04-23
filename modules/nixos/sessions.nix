{pkgs, ...}: {

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        # command = "Hyprland";
        # user = "tobi";
        command = "${pkgs.tuigreet}/bin/tuigreet -g '' --user-menu --cmd Hyprland";
        user = "greeter";
      };
    };
    useTextGreeter = true;
  };

}
