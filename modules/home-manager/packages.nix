{pkgs, ...}: {
  home.packages = with pkgs; [
    neovim	
    spotify
    anydesk
    libreoffice
    thunderbird
    qucs-s
    ngspice
    jetbrains.idea-ultimate
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "spotify"
      "anydesk"
      "idea-ultimate"
    ];
}
