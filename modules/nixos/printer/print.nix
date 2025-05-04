{pkgs, ...}: {
  services.printing.enable = true;
  services.printing.drivers = [
    (pkgs.writeTextFile
      {
        name = "xwc3220.ppd";
        text = builtins.readFile ./xwc3220.ppd;
        destination = "/share/cups/model/xwc3220.ppd";
      })
  ];

  hardware.printers = {
    ensurePrinters = [
      {
        name = "xwc3220";
        location = "Paradies";
        deviceUri = "ipp://192.168.178.250/ipp/";
        model = "xwc3220.ppd";
        ppdOptions = {
          PageSize = "A4";
        };
      }
    ];
    ensureDefaultPrinter = "xwc3220";
  };
}
