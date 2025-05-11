{ config, ... }: {
  services.mako = {
    enable = true;

    backgroundColor = "${config.theme.background_nt}BG";
    borderColor = "${config.theme.red}";
    borderRadius = config.theme.radius_in;
    borderSize = config.theme.border_size;
    defaultTimeout = 5000;
    font = config.theme.font;
    margin = "16, 16, -8";
    padding = "2, 10";
    textColor = "${config.theme.text}";
  };
}
