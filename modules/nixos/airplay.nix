{ tether, ... }: {

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
  };

  imports = [ tether.nixosModules.default ];
  programs.tether = {
    enable = true;

    wifi = {
      enable = true;
      openFirewall = true;
    };

    bluetooth.enable = false;

    extensions = [ ];
  };
}
