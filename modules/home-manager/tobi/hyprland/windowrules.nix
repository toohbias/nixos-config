{
  wayland.windowManager.hyprland.settings = {
    window_rule = [
      {
        name = "opaqueBrowser";
        match.title = "(.*)(Chromium)$";
        opaque = true;
      }
      {
        name = "censorWindows";
        match.tag = "censored";
        no_screen_share = true;
      }
    ];
  };
}
