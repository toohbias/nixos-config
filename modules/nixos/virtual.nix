{

  virtualisation.virtualbox = {
    host = {
      enable = true;
      enableExtensionPack = true;
    };
    guest = {
      enable = true;
      dragAndDrop = true;
    };
  };

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "Oracle_VirtualBox_Extension_Pack"
  ];

  virtualisation.docker.enable = true;

}
