{ config, ... }: {

  programs.kitty = {
    enable = true;
    font = {
      name = config.theme.font;
      size = 11;
    };
  };

}
