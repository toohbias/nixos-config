{
  wayland.windowManager.hyprland.settings = {
    window_rule = [
      {
        name = "opaqueBrowser";
        match.title = "(.*)(Chromium)$";
        opaque = true;
      }
    ];
  };
}
