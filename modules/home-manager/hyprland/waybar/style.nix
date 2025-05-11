{ config, ... }: {
  programs.waybar.style = ''
    * {
        font-family: ${config.theme.font};
        font-weight: 500;
        font-size: 15px;
    }
    window#waybar {
        background: transparent;
    }
    .modules-left {
        padding: 2px 10px;
        margin: 8px 8px 0px;
        border-radius: ${toString config.theme.radius_out}px;
        background: ${config.theme.background};
        border: ${toString config.theme.border_size}px solid ${config.theme.inactive};
    }
    .modules-center {
        padding: 2px 10px;
        margin: 8px 8px 0px;
        border-radius: ${toString config.theme.radius_out}px;
        background: ${config.theme.background};
        color: ${config.theme.text};
        border: ${toString config.theme.border_size}px solid ${config.theme.inactive};
    }
    .modules-right {
        padding: 2px 10px;
        margin: 8px 8px 0px;
        border-radius: ${toString config.theme.radius_out}px;
        background: ${config.theme.background};
        color: ${config.theme.text};
        border: ${toString config.theme.border_size}px solid ${config.theme.inactive};
    }
    #workspaces button {
        padding: 0px;
        color: ${config.theme.text};
    }
    #custom-spacer {
        color: #${config.theme.background_nt};
    }
  '';
}
