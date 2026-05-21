{ pkgs, ...}: {

  services.xserver = {
    enable = true;
    desktopManager = {
      xfce.enable = true;
      xterm.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    xorg.xinit
    xauth
  ];
    
}
