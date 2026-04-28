{ pkgs, ...}: {
  home.packages = with pkgs; [
    libreoffice
    anydesk
  ];

  nixpkgs.config = {
    allowUnfreePredicate = pkg:
      builtins.elem (pkgs.lib.getName pkg) [
        "anydesk"
      ];
  };
}
