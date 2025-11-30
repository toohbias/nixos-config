{

  nix.gc = {
    automatic = true;
    frequency = "weekly";
    options = "--delete-older-than 7d";
  };

  services.home-manager.autoUpgrade = {
    enable = true;
    frequency = "weekly";
  };

}
