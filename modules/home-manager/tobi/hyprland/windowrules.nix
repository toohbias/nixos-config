{
  wayland.windowManager.hyprland.settings = {
    config.windowrule = [
      {
        name = "opaqueBrowser";
        match.title = "(.*)(Chromium)$";
        opaque = true;
      }
    ];
  };
}
