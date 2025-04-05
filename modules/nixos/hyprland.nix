{config, pkgs, ... }: {
 
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
  };

  environment.systemPackages = with pkgs; [
    hyprpaper
    kitty
    dunst
    libnotify
    mako
    qt6.qtwayland
    wofi
    waybar

    xwayland

    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr

    wayland-protocols
    wayland-utils
    wl-clipboard
    wlroots
  ];

}
