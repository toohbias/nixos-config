{ pkgs, ... }: {

  home.packages = with pkgs; [

  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "spotify"
    ];

}
