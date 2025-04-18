{ pkgs, ... }: {

  home.packages = with pkgs; [
    spotify
    thunderbird
    qucs-s
    ngspice
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "spotify"
    ];

}
