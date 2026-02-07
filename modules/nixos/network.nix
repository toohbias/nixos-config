{ pkgs, ...} : {

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [];
    trustedInterfaces = [ "virbr0" ];
  };
  programs.wireshark = {
    enable = true;
    package = pkgs.wireshark;
  };

}
