{ pkgs, ...}: {

  services.xserver = {
    enable = true;
    desktopManager = {
      xfce.enable = true;
      xterm.enable = false;
    };
    videoDrivers = [ "modesetting" ];
    xkb = {
      layout = "us";
      variant = "";
      options = "caps:swapescape";
    };
  };

  # services.displayManager = {
  #   enable = true;
  #   defaultSession = "xfce";
  #   autoLogin = {
  #     enable = true;
  #     user = "tobi";
  #   };
  # };
    
  services.libinput.enable = true;
  services.udev.enable = true;

  environment.systemPackages = with pkgs; [
    xorg.xinit
    xauth
  ];
    
}
