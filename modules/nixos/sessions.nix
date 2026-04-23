{

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        # command = "Hyprland";
        # user = "tobi";
        command = "agreety --cmd Hyprland";
        user = "greeter";
      };
    };
  };

}
