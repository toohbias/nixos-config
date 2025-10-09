{pkgs, inputs, system, ...} : {
  home.packages = with pkgs; [
    spotify-player
    thunderbird
    kicad
    gimp
    discord
    jetbrains.rust-rover
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [ "discord" "rust-rover" ];

  xdg.desktopEntries = {
    Spotify = {
      name = "Spotify";
      exec = "kitty spotify_player";
    };
  };
}
