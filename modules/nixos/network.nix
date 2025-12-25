{ pkgs, ...} : {

  networking.firewall = {
    enable = true;
    # allowedTCPPorts = [ 8080 ];
  };
  programs.wireshark = {
    enable = true;
    package = pkgs.wireshark;
  };

}
