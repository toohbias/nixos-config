{ pkgs, ... }: {

  home.packages = with pkgs; [
    spotify
    thunderbird
    kicad
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "spotify"
    ];

}
