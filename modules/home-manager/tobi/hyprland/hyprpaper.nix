let
  wpdir = "~/pic/wallpaper/red1.png";
in {

  services.hyprpaper = {
    enable = true;
    settings = {
      preload = wpdir;
      wallpaper = ",${wpdir}";
    };
  };

}
