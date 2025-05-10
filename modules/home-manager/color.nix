{lib, ... }: {
    options.theme = lib.mkOption {
      type = lib.types.attrs;
    
      default = {
        active = "rgba(255, 255, 255, 1.0)";
        background = "rgba(0, 0, 0, 0.75)";
        inactive = "rgba(89, 89, 89, 0.75)";
        text = "rgba(255, 255, 255, 0.75)";
        red = "rgba(186, 24, 27, 1.0)";

        background_nt = "#000000";
        inactive_nt = "#595959";
        text_nt = "#FFFFFF";
      };
    };
}
