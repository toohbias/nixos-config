{

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        # command = "Hyprland";
        # user = "tobi";
        command = "agetty --cmd Hyprland";
        user = "greeter";
      };
    };
  };

}
