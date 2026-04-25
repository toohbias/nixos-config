{

  boot.supportedFilesystems = [ "nfs" ];

  fileSystems = {
    "/mnt/server/Public" = {
      device = "192.168.178.251:/mnt/HD/HD_a2/Public";
      fsType = "nfs";
      options = [
        "x-systemd.automount"
        "noauto"
        "x-systemd.idle-timeout=600"
      ];
    };

    "/mnt/server/Pictures" = {
      device = "192.168.178.251:/mnt/HD/HD_a2/Pictures";
      fsType = "nfs";
      options = [
        "x-systemd.automount"
        "noauto"
        "x-systemd.idle-timeout=600"
      ];
    };

    "/mnt/server/Movies" = {
      device = "192.168.178.251:/mnt/HD/HD_a2/Movies";
      fsType = "nfs";
      options = [
        "x-systemd.automount"
        "noauto"
        "x-systemd.idle-timeout=600"
      ];
    };

    "/mnt/server/tobias" = {
      device = "192.168.178.251:/mnt/HD/HD_a2/tobias";
      fsType = "nfs";
      options = [
        "x-systemd.automount"
        "noauto"
        "x-systemd.idle-timeout=600"
      ];
    };
  };

}
