{ pkgs, ...}: {

  services.xserver = {
    enable = true;
    desktopManager = {
      xfce.enable = true;
      xterm.enable = false;
    };
    videoDrivers = [ "modesetting" ];
  };

  services.displayManager.sddm.enable = true;

  # services.displayManager = {
  #   enable = true;
  #   defaultSession = "xfce";
  #   autoLogin = {
  #     enable = true;
  #     user = "tobi";
  #   };
  # };
    
  services.libinput.enable = true;

  environment.systemPackages = with pkgs; [
    xorg.xinit
    xauth
  ];
    
}
