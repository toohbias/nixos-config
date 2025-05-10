{ config, ... }: {
  programs.wofi.style = ''
    * {
        font-family: "FiraCode Nerd Font";
        font-weight: 500;
        font-size: 15px;
    }
    #window {
        background: ${config.theme.background};
        border-radius: 10px;
        border: 2px solid ${config.theme.active};
    }
    #outer-box {
        padding: 8px;
    }
    #input {
        padding: 2px 8px;
        margin: 0px 0px 8px;
        background: transparent;
        color: ${config.theme.text};
        border-radius: 8px;
        border: 2px solid ${config.theme.inactive};
    }
    #input:focus {
        box-shadow: none;
        border: 2px solid ${config.theme.active};
    }
    #text {
        color: ${config.theme.text};
    }
    #entry:selected {
        background: ${config.theme.red};
    }
  '';
}
