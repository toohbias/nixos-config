{ config, ... }: {
  programs.wofi.style = ''
    * {
        font-family: ${config.theme.font};
        font-weight: 500;
        font-size: 15px;
    }
    #window {
        background: ${config.theme.background};
        border-radius: ${toString config.theme.radius_out}px;
        border: ${toString config.theme.border_size}px solid ${config.theme.active};
    }
    #outer-box {
        padding: 8px;
    }
    #input {
        padding: 2px 10px;
        margin: 0px 0px 8px;
        background: transparent;
        color: ${config.theme.text};
        border-radius: ${toString config.theme.radius_in}px;
        border: ${toString config.theme.border_size}px solid ${config.theme.inactive};
    }
    #input:focus {
        box-shadow: none;
        border: ${toString config.theme.border_size}px solid ${config.theme.active};
    }
    #text {
        color: ${config.theme.text};
    }
    #entry:selected {
        background: ${config.theme.red};
    }
  '';
}
