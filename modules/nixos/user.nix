{
  users.users = {
    tobi = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "networkmanager"
        "wireshark"
        "docker"
        "dialout"
        "libvirtd"
        "video"
      ];
      uid = 1003;
    };
    babbabra = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "networkmanager"
        "wireshark"
      ];
      uid = 1002;
    };
  };
}
