{
  pkgs,
  inputs,
  ...
}: {
  home.packages = [
    pkgs.wofi
    pkgs.waybar
    pkgs.hyprpaper
    pkgs.hyprshot
    inputs.mcmojave-hyprcursor.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
