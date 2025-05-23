{
  imports = [
    ./../../modules/home-manager
  ];

  home = {
    username = "tobi";
    homeDirectory = "/home/tobi";
    stateVersion = "25.05";
  };

  news.display = "silent";
}
