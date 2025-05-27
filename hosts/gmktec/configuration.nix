{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/nixos
  ];

  nix.settings = {
    experimental-features = ["nix-command" "flakes"];
  };

  security.polkit.enable = true;

  networking.hostName = "nixos";

  services.xserver = {
    enable = true;
    desktopManager.xfce = {
      enable = true;
      enableWaylandSession = true;
    };
  };

  # some programs need suid wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  system.stateVersion = "25.05";
}
