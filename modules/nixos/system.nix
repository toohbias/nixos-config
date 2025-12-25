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

  services.udev.extraRules = ''
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="2e8a", MODE:="0666"
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="2341", MODE:="0666"
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="1fc9", MODE:="0666"
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="0525", MODE:="0666"
  '';

}
