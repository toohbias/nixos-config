{

  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "opaque, title:(.*)(Brave)$"
    ];

    windowrulev2 = [
      "suppressevent maximize, class:.*"
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
    ];
  };

}
