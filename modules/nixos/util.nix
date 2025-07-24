{ pkgs, ...}: {

  services.libinput = {
    enable = true;
    mouse.additionalOptions = ''
      [Drag Click]
      MatchName=PixArt Lenovo USB Optical Mouse
      ModelBouncingKeys=1
    '';
  };

}
