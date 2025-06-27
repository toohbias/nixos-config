{ config, ... }: {

  programs.hyprlock = {
    enable = true;

    settings = {
      background = {
        path = "~/pic/wallpaper/red1_lock_input.png";
        blur_passes = 0;
      };

      input-field = {
        size = "300, 60";
        outer_color = config.theme.transparent;
        inner_color = config.theme.transparent;
        font_color = config.theme.text;
        font_family = config.theme.font;
        fade_on_empty = false;
        halign = "center";
        valign = "center";
        position = "0, 1";
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
