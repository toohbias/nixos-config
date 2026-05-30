{
  wayland.windowManager.hyprland.settings = {
    env = [
      { _args = [ "NIXOS_OZONE_WL" 1 ]; }
      { _args = [ "XDG_CURRENT_DESKTOP" "Hyprland" ]; }
      { _args = [ "XDG_SESSION_TYPE" "wayland" ]; }
      { _args = [ "XDG_SESSION_DESKTOP" "Hyprland" ]; }
      { _args = [ "QT_QPA_PLATFORM" "wayland" ]; }

      { _args = [ "HYPRCURSOR_THEME" "McMojave" ]; }
      { _args = [ "HYPRCURSOR_SIZE" 32 ]; }
    ];
  };
}
