{pkgs, inputs, system, ...} : {
  home.packages = with pkgs; [
    # spotify-player
    spotify
    thunderbird
    gimp
    discord
    anydesk
  ];

  nixpkgs.config = {
    allowUnfreePredicate = pkg:
      builtins.elem (pkgs.lib.getName pkg) [ "discord" "anydesk" "spotify" ];
    permittedInsecurePackages = [ "gradle-7.6.6" ];
  };

/*
  xdg.desktopEntries = {
    Spotify = {
      name = "Spotify";
      exec = "kitty spotify_player";
    };
  };
*/
}
