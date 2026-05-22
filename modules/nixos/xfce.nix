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

  environment.systemPackages = with pkgs; [
    xorg.xinit
    xauth
  ];
    
}
