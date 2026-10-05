{ pkgs, config, ... }: {
  networking.firewall = {
    enable = true;
    trustedInterfaces = [ "virbr0" ];
    allowedTCPPorts = [
      5134 # tether test

      80 # nextcloud
      9980
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

  services.nextcloud = {
    enable = true;
    hostName = "0.0.0.0:80";
    config = {
      adminpassFile = "/home/nix-shared/pass";
      dbtype = "sqlite";
    };
    extraApps = {
      inherit (config.services.nextcloud.package.packages.apps) calendar richdocuments;
    };
  };

  services.collabora-online = {
    enable = true;
    settings = {
      ssl.enable = false;
      net = {
        listen = "loopback";
        post_allow.host = [ "::1" ];
      };
      storage.wopi = {
        "@allow" = true;
        host = [ config.services.nextcloud.hostName ];
      };
      server_name = "0.0.0.0:9980";
    };
  };
}
