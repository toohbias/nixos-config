{
  pkgs,
  inputs,
  ...
}: {
  home.packages = [
    pkgs.wofi
    pkgs.waybar
    pkgs.hyprpaper
    pkgs.wl-clipboard
    pkgs.cliphist
    inputs.mcmojave-hyprcursor.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
