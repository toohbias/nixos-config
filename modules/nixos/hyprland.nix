{ pkgs, ... }: {

  services.xserver = {
    enable = true;

    displayManager.gdm = {
      enable = true;
      wayland = true;
    };
  };
 
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    hyprpaper
    kitty
    dunst
    libnotify
    qt6.qtwayland
    wofi

    xwayland

    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    xdg-desktop-portal-hyprland

    wayland-protocols
    wayland-utils
    wl-clipboard
    wlroots
  ];

}
