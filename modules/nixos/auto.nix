{

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };
  nix.settings.auto-optimise-store = true;

  system.autoUpgrade = {
    enable = true;
    dates = "weekly";
  };

}
