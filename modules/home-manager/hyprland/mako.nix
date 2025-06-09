{ config, ... }: {
  services.mako = {
    enable = true;

    settings = {
      background-color = "#${config.theme.background_nt}${config.theme.opacity_nt}";
      border-color = "#${config.theme.red_nt}${config.theme.opacity_nt}";
      border-radius = config.theme.radius_in;
      border-size = config.theme.border_size;
      default-timeout = 5000;
      font = config.theme.font;
      margin = "16, 16, -8";
      padding = "2, 10";
      text-color = "#${config.theme.text_nt}${config.theme.opacity_nt}";
    };
  };
}
