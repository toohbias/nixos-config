{ pkgs, ... }: {
  networking.firewall = {
    enable = true;
    trustedInterfaces = [ "virbr0" ];
    allowedTCPPorts = [
      5134 # tether test
    ];
  };

  networking.hosts = {
    "192.168.178.216" = [ "raspiKeller" ];
    "192.168.178.115" = [ "raspi" ];
  };

  programs.wireshark = {
    enable = true;
    package = pkgs.wireshark;
  };
}
