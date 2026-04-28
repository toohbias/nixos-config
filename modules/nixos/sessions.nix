{ pkgs, ...}: {

  # services.greetd = {
  #   enable = true;
  #   settings = {
  #     default_session = {
  #       command = "Hyprland";
  #       user = "tobi";
  #     };
  #   };
  # };

  programs.regreet = {
    enable = true;
  };

  services.desktopManager.plasma6.enable = true;
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
        ark
        discover
 ];

}
