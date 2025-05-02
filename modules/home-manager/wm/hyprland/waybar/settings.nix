{
  programs.waybar.settings.mainBar = {
    layer = "top";
    position = "top";
    height = 30;

    output = ["HDMI-A-1"];

    modules_right = [
      "clock"
    ];

    clock = {
      format = "{:%R  %A %b %d}";
    };
  };
}
