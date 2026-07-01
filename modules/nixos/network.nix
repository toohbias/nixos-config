{ pkgs, ... }: {
  networking.firewall = {
    enable = true;
    trustedInterfaces = [ "virbr0" ];
    allowedTCPPorts = [
      3389
      22
    ];
  };

  networking.hosts = {
    "192.168.178.216" = [ "raspi" ];
    "192.168.178.115" = [ "raspi4b" ];
  };

  programs.wireshark = {
    enable = true;
    package = pkgs.wireshark;
  };
}
