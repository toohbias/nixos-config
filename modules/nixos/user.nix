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
      uid = 1004;
    };
  };

}
