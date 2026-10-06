{ pkgs, pkgs-unstable, ... }:
{
  # boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelParams = [ "kvm.enable_virt_at_load=0" ]; # virtualbox kvm error

  # usb
  services.udisks2 = {
    enable = true;
    mountOnMedia = true;
  };

  # arduino ide esp32
  services.udev.extraRules = ''
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="2e8a", MODE:="0666"
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="2341", MODE:="0666"
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="1fc9", MODE:="0666"
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="0525", MODE:="0666"
  '';

  # hacking on NAN
  boot.kernelPackages = pkgs.linuxPackages_latest;

  nixpkgs.overlays = [
    (final: prev: {
      wpa_supplicant = prev.wpa_supplicant.overrideAttrs (old: {
        extraConfig = old.extraConfig + ''
          CONFIG_NAN=y
          CONFIG_NAN_USD=y
        '';
      });
    })
  ];
  users.users.tobi.extraGroups = [ "wpa_supplicant" ];

}
