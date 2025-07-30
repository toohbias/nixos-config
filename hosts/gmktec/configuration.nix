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

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  system.stateVersion = "25.05";
}
