{
  imports = [
    ./hyprland.nix
    ./autostart.nix
    ./env.nix
    ./input.nix
    ./looks.nix
    ./programs.nix
    ./windowrules.nix

    ./packages.nix

    ./wofi
    ./waybar
    #   ./hyprlock.nix
    ./hyprpaper.nix
  ];
}
