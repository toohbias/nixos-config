{
  programs.git = {
    enable = true;
    settings = {
      init.defaultBranch = "main";
      safe.directory = "/home/nix-shared";
      user = {
        name = "toohbias";
        email = "db2tbo@outlook.de";
      };
    };
  };
}
