{pkgs, inputs, system, ...} : {
  home.packages = with pkgs; [
    spotify-player
    thunderbird
    kicad
    gimp
    discord
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [ "discord" ];

  xdg.desktopEntries = {
    Spotify = {
      name = "Spotify";
      exec = "kitty spotify_player";
    };
  };
}
