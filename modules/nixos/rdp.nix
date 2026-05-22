{
  # this relies on the existence of xfce.nix
  services.xrdp = {
    enable = true;
    openFirewall = true;
    defaultWindowManager = "startxfce4";
  };
}
