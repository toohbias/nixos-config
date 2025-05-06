{
  pkgs,
  inputs,
  ...
}: {
  home.packages = [
    pkgs.wofi
    pkgs.waybar
    pkgs.hyprpaper
    #   inputs.mcmojave-hyprcursor.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
