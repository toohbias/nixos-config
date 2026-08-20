{
  pkgs,
  inputs,
  ...
}:
{
  home.packages = with pkgs; [
    wofi
    hyprpaper
    hyprshot
    tesseract
    libnotify
    inputs.mcmojave-hyprcursor.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
