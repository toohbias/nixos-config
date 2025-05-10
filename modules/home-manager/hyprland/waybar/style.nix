{ config, ... }: {
  programs.waybar.style = ''
    * {
        font-family: "FiraCode Nerd Font";
        font-weight: 500;
        font-size: 15px;
    }
    window#waybar {
        background: transparent;
    }
    .modules-left {
        padding: 2px 10px;
        margin: 8px 8px 0px;
        border-radius: 10px;
        background: ${config.theme.background};
        border: 2px solid ${config.theme.inactive};
    }
    .modules-center {
        padding: 2px 10px;
        margin: 10px 10px 0px;
        border-radius: 10px;
        background: ${config.theme.background};
        color: ${config.theme.text};
        border: 2px solid ${config.theme.inactive};
    }
    .modules-right {
        padding: 2px 10px;
        margin: 10px 10px 0px;
        border-radius: 10px;
        background: ${config.theme.background};
        color: ${config.theme.text};
        border: 2px solid ${config.theme.inactive};
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
