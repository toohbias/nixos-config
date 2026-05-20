{pkgs, ...}: {

  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver
      libva
      libvdpau-va-gl
    ];
  };

}
