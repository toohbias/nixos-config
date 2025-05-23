{ config, ... }: {
  services.mako = {
    enable = true;

    settings = {
      backgroundColor = "#${config.theme.background_nt}${config.theme.opacity_nt}";
      borderColor = "#${config.theme.red_nt}${config.theme.opacity_nt}";
      borderRadius = config.theme.radius_in;
      borderSize = config.theme.border_size;
      defaultTimeout = 5000;
      font = config.theme.font;
      margin = "16, 16, -8";
      padding = "2, 10";
      textColor = "#${config.theme.text_nt}${config.theme.opacity_nt}";
    };
  };
}
