{
  programs.regreet = {
    enable = true;
    cageArgs = [
      "-s"
      "-d"
      "-m"
      "last"
    ];
    settings = {
      background = {
        path = "/home/nix-shared/modules/nixos/session/wallpaper.png";
        fit = "Cover";
      };
    };
  };
}
