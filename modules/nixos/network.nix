{ pkgs, ...} : {

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 7000 7001 7100 ];
    allowedUDPPorts = [ 5353 6000 6001 7011 ];
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
