{pkgs, ...}: {
  home.packages = with pkgs; [
    libnotify

    spotify
    anydesk
    libreoffice
    thunderbird
    qucs-s
    ngspice
    jetbrains.idea-ultimate
    shotcut
 ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "spotify"
      "anydesk"
      "idea-ultimate"
    ];
}
