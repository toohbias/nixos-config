{ pkgs, ... }: {

  home.packages = with pkgs; [
    spotify
    thunderbird
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "spotify"
    ];

}
