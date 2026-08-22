{
  networking.firewall = {
    allowedTCPPorts = [
      7000
      7001
      7100
    ];
    allowedUDPPorts = [
      6000
      6001
      7011
    ];
  };

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
    publish = {
      enable = true;
      addresses = true;
      workstation = true;
      userServices = true;
      domain = true;
    };

    #tmp
    allowInterfaces = [
      "enp2s0"
      "virbr0"
    ];
    reflector = true;
  };
}
