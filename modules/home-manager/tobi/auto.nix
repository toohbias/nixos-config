{

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  services.home-manager.autoUpgrade = {
    enable = true;
    frequency = "weekly";
  };

}
