{
  imports = [
    ./../../modules/home-manager
  ];

  home = {
    username = "tobi";
    homeDirectory = "/home/tobi";
    stateVersion = "24.11";
  };

  news.display = "silent";
}
