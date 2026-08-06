{ config, ... }: {
  programs.hyprlock = {
    enable = true;

    settings = {
      general.fail_timeout = 0;

      background = {
        path = "~/pic/wallpaper/red1_lock.png";
        blur_passes = 0;
      };

      bezier = "easeOutCubic, 0.33, 1, 0.68, 1";
      animation = "inputFieldColors, 1, 3.5, easeOutCubic";

      input-field = {
        size = "300, 60";
        swap_font_color = true;
        outline_thickness = 3;
        rounding = config.theme.radius_out;
        outer_color = config.theme.active;
        inner_color = config.theme.background;
        font_color = config.theme.text;
        font_family = config.theme.font;
        fade_on_empty = false;
        halign = "center";
        valign = "center";
        position = "0, 1";
        capslock_color = config.theme.red;
        fail_color = config.theme.red;
        check_color = config.theme.red;
      };

      label = {
        text = ''cmd[update:1000] echo -e "$(date +"%R  %A %b %d")"'';
        color = config.theme.text;
        font_family = "${config.theme.font} Bold";
        font_size = 40;
        halign = "center";
        valign = "center";
        position = "0, 350";
      };
    };
  };

  xdg.configFile."hypr/hyprlock.conf".force = true;
}
