{ pkgs, ...}: {

  services.xserver = {
    enable = true;
    desktopManager = {
      xfce.enable = true;
      xterm.enable = false;
    };
  };
    
  services.libinput.enable = true;
  services.displayManager.defaultSession = "xfce";

  environment.systemPackages = with pkgs; [
    xorg.xinit
    xauth
  ];
    
}
