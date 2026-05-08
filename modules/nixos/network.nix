{ pkgs, ...} : {

  networking.firewall = {
    enable = true;
    trustedInterfaces = [ "virbr0" ];
  };

  networking.hosts = {
    "192.168.178.216" = [ "raspi" ];
  };

  programs.wireshark = {
    enable = true;
    package = pkgs.wireshark;
  };

}
