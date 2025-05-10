{ config, ... }: {
  services.mako = {
    enable = true;

    backgroundColor = "${config.theme.background}";
    borderColor = "${config.theme.red}";
    borderRadius = 8;
    borderSize = 2;
    defaultTimeout = 5000;
    font = "FiraCode Nerd Font";
    margin = "16, 16, -8";
    padding = "2, 10";
    textColor = "${config.theme.text}";
  };
}
