{pkgs, ...}: {
  home.packages = with pkgs; [
    spotify
    anydesk
    thunderbird
    qucs-s
    ngspice
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "spotify"
      "anydesk"
    ];
}
