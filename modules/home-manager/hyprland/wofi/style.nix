{
  programs.wofi.style = ''
    * {
        font-family: "FiraCode Nerd Font";
        font-weight: 500;
        font-size: 15px;
    }
    #window {
        background: rgba(0, 0, 0, 0.75);
        border-radius:10px;
        border: 2px solid #FFFFFF
    }
    #outer-box {
        padding: 8px;
    }
    #input {
        padding: 2px 8px;
        margin: 0px 0px 8px;
        background: transparent;
        color: rgba(255, 255, 255, 0.75);
        border-radius: 8px;
        border: 2px solid rgba(89, 89, 89, 0.75);
    }
    #input:focus {
        box-shadow: none;
        border: 2px solid #FFFFFF
    }
    #text {
        color: rgba(255, 255, 255, 0.75);
    }
    #entry:selected {
        background: #BA181B;
    }
  '';
}
