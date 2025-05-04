{
  services.printing.enable = true;

  hardware.printers = {
    ensurePrinters = [
      {
        name = "xwc3220";
        location = "Paradies";
        deviceUri = "ipp://192.168.178.250/ipp/";
        model = "drv:///~/nix/modules/nixos/printer/xwc3220.ppd";
        ppdOptions = {
          PageSize = "A4";
        };
      }
    ];
    ensureDefaultPrinter = "xwc3220";
  };
}
