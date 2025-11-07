{pkgs, inputs, system, ...} : {
  home.packages = with pkgs; [
    spotify-player
    thunderbird
    kicad
    gimp
    discord
    anydesk
    shotcut
  ];

  nixpkgs.config = {
    allowUnfreePredicate = pkg:
      builtins.elem (pkgs.lib.getName pkg) [ "discord" "anydesk" ];
  };


  xdg.desktopEntries = {
    Spotify = {
      name = "Spotify";
      exec = "kitty spotify_player";
    };
  };
}
