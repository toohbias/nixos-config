{ pkgs, ... }: {

  home.packages = with pkgs; [
    spotify
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "spotify"
    ];

}
