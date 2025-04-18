{ pkgs, ... }: {

  home.packages = with pkgs; [
    spotify
    thunderbird
    qucs-s
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "spotify"
    ];

}
