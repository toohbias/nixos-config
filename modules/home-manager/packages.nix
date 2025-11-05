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
    permittedInsecurePackages = [ "gradle-7.6.6" ];
  };


  xdg.desktopEntries = {
    Spotify = {
      name = "Spotify";
      exec = "kitty spotify_player";
    };
  };
}
