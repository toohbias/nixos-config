{
  imports = [
    ./hardware-configuration.nix
    ./modules/nixos
  ];

  nix.settings = {
    experimental-features = ["nix-command" "flakes"];
  };

  security.polkit.enable = true;

  networking.hostName = "nixos";

  services.openssh = {
    enable = true;
    settings.X11Forwarding = true;
  };

  system.stateVersion = "26.05";
}
