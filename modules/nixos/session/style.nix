{
  programs.regreet.extraCss = ''
    * {
        font-family: FiraCode Nerd Font;
        font-weight: 500;
        font-size: 15px;
        color: rgba(255, 255, 255, 1.0);
    }
    combobox>popover>contents,
    frame {
        background: rgba(0, 0, 0, 0.75);
        border-radius: 10px;
        border: 2px solid rgba(255, 255, 255, 1.0);
    }
    entry,
    button {
        background: rgba(0, 0, 0, 0);
        border-radius: 10px;
        border: 2px solid rgba(255, 255, 255, 1.0);
        outline-width: 0;
    }
    combobox {
        border: none;
    }
    button.destructive-action {
        border: 2px solid rgba(186, 24, 27, 1.0);
    }
    button.toggle {
        border: 2px solid rgba(89, 89, 89, 1.0);
    }
    combobox>popover {
        visibility: hidden;
    }
    combobox>popover>contents:hover {
        background: rgba(0, 0, 0, 0.75);
    }
  '';
}
