{
  imports = [
    ./../../modules/home-manager
  ];

  home = {
    username = "tobi";
    homeDirectory = "/home/tobi";
    stateVersion = "25.11";
  };

  news.display = "silent";
}
