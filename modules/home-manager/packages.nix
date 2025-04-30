{pkgs, ...}: {
  home.packages = with pkgs; [
    spotify
    anydesk
    libreoffice
    thunderbird
    qucs-s
    ngspice
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "spotify"
      "anydesk"
      "jetbrains.idea-ultimate"
    ];
}
