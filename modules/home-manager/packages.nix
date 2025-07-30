{pkgs, ...}: {
  home.packages = with pkgs; [
    anydesk
    libreoffice
    thunderbird
    qucs-s
    ngspice
    jetbrains.idea-ultimate
    shotcut
    gimp
    discord
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "anydesk"
      "idea-ultimate"
      "discord"
    ];
}
