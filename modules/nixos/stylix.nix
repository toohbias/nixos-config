{ pkgs, config } : {

  stylix = {
    enable = true;
    image = "~/Pictures/wallpaper/red1.png";
    polarity = "dark";
    fonts = {
      monospace = {
        package = pkgs.fira-code;
        name = "FiraCode Nerd Font";
      };
      serif = config.stylix.fonts.monospace;
      sansSerif = config.stylix.fonts.monospace;
      emoji = config.stylix.fonts.monospace;
    };
  };

}
