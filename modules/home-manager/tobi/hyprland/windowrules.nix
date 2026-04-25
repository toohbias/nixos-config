{
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "opaque, title:(.*)(Chromium)$"
      "opaque, title:Test"
    ];

    windowrulev2 = [
      "suppressevent maximize, class:.*"
      "nofocus, class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      "float, class:(src)(.*)$"
      "float, title:Test"
    ];
  };
}
