let
  wpdir = "~/Pictures/wallpaper/red1.png";
in {

  services.hyprpaper = {
    enable = false;
    settings = {
      preload = wpdir;
      wallpaper = ",${wpdir}";
    };
  };

}
