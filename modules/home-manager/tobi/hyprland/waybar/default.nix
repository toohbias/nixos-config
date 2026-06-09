{ waybar-fixed, pkgs, ... }: {

  programs.waybar = {
    enable = true;
    package = waybar-fixed.packages.${pkgs.stdenv.hostPlatform.system}.default;
  };

  imports = [
    ./config.nix
    ./style.nix
  ];
}
