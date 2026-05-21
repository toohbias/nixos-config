{
  services.greetd = {
    enable = true;
    settings.default_session = {
      command = "start-xfce4";
      user = "tobi";
    };
  };
}
