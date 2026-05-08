{pkgs, ...} : {
  home.packages = with pkgs; [
    spotify-player
    # spotify
    thunderbird
    gimp
    discord
    anydesk
    libreoffice
    # winboat
    appimage-run
    uxplay
  ];

  nixpkgs.config = {
    allowUnfreePredicate = pkg:
      builtins.elem (pkgs.lib.getName pkg) [ 
        "discord" 
        "anydesk" 
        # "spotify" 
      ];
    permittedInsecurePackages = [ "gradle-7.6.6" ];
  };

# /*
  xdg.desktopEntries = {
    Spotify = {
      name = "Spotify";
      exec = "kitty spotify_player";
    };
  };
# */
}
