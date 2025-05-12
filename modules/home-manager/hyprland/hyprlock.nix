{

  programs.hyprlock = {
    enable = true;

    settings = {
      background = {
        path = "~/Pictures/wallpaper/red1.png";
        blur_passes = 3;
        blur_size = 8;
      };

      input-field = {
        
      };
    };
  };

  xdg.configFile."hypr/hyprlock.conf".force = true;

}
