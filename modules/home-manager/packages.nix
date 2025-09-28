{pkgs, ...} : {
  home.packages = with pkgs; [
    spotify-player
    anydesk
    libreoffice
    thunderbird
    kicad
    jetbrains.idea-ultimate
    shotcut
    gimp
    discord
    socat
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "anydesk"
      "idea-ultimate"
      "discord"
    ];

  xdg.desktopEntries = {
    Spotify = {
      name = "Spotify";
      exec = "kitty spotify_player";
    };
  };
}
