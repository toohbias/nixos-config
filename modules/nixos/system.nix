{
  # boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelParams = [ "kvm.enable_virt_at_load=0" ]; # virtualbox kvm error

  # networkmanager
  networking.networkmanager.enable = true;

  # usb
  services.udisks2 = {
    enable = true;
    mountOnMedia = true;
  };

}
