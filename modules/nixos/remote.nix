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
    
  services.xrdp = {
    enable = true;
    openFirewall = true;
    defaultWindowManager = "startxfce4";
  };

  programs.kdeconnect.enable = true;
}
