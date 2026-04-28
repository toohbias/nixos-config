{ pkgs, ...}: {

  programs.regreet = {
    enable = true;
  };

  services.desktopManager.plasma6.enable = true;
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
        ark
        discover
  ];

  services.displayManager.sessionPackages = [
    pkgs.hyprland
  ];

}
