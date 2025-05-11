{lib, config, ... }: {
    options.theme = lib.mkOption {
      type = lib.types.attrs;
    
      default = {
        opacity = 0.75;
        active = "rgba(255, 255, 255, 1.0)";
        background = "rgba(0, 0, 0, ${toString config.theme.opacity})";
        inactive = "rgba(89, 89, 89, ${toString config.theme.opacity})";
        text = "rgba(255, 255, 255, ${toString config.theme.opacity})";
        red = "rgba(186, 24, 27, 1.0)";

        active_nt = "FFFFFF";
        background_nt = "000000";
        inactive_nt = "595959";
        text_nt = "FFFFFF";

        radius_out = 10;
        radius_in = 8;
        border_size = 2;

        font = "FiraCode Nerd Font";
      };
    };
}
