{ pkgs , ... }: {

  programs.tmux = {
    enable = true;
    extraConfig = ''
      bind -n C-h select-pane -L
      bind -n C-j select-pane -D
      bind -n C-k select-pane -U
      bind -n C-l select-pane -R
    '';
  };

}
