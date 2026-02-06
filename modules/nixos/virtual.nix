{pkgs, ...}: {

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

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (pkgs.lib.getName pkg) [
    "Oracle_VirtualBox_Extension_Pack"
  ];

  virtualisation.docker.enable = true;

  boot.binfmt.emulatedSystems = [ "aarch64-linux" ];

}
