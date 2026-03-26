{pkgs, inputs, system, ...} : {
  home.packages = with pkgs; [
    # spotify-player
    spotify
    thunderbird
    gimp
    discord
    anydesk
    libreoffice
  ];

  nixpkgs.config = {
    allowUnfreePredicate = pkg:
      builtins.elem (pkgs.lib.getName pkg) [ "discord" "anydesk" "spotify" ];
    permittedInsecurePackages = [ "gradle-7.6.6" ];
  };

  programs.dconf.enable = true;

/*
  xdg.desktopEntries = {
    Spotify = {
      name = "Spotify";
      exec = "kitty spotify_player";
    };
  };
*/
}
