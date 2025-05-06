{
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
        padding: 0px 5px;
        margin: 8px 8px 0px;
        border-radius: 10px;
        background: rgba(0, 0, 0, 0.75);
        border: 2px solid rgba(89, 89, 89, 0.67);
    }
    .modules-center {
        padding: 0px 5px;
        margin: 10px 10px 0px;
        border-radius: 10px;
        background: rgba(0, 0, 0, 0.75);
        color: rgba(255, 255, 255, 0.75);
        border: 2px solid rgba(89, 89, 89, 0.67);
    }
    .modules-right {
        padding: 0px 5px;
        margin: 10px 10px 0px;
        border-radius: 10px;
        background: rgba(0, 0, 0, 0.75);
        color: rgba(255, 255, 255, 0.75);
        border: 2px solid rgba(89, 89, 89, 0.67);
    }
    #workspaces button {
        color: rgba(255, 255, 255, 0.75);
    }
    #custom-spacer {
        color: #595959;
    }
  '';
}
