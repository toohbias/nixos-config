{
  programs.wofi.enable = true;

  imports = [
    ./config.nix
    ./style.nix
  ];
}
