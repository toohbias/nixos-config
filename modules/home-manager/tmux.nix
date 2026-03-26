{pkgs, ... }: {

  programs.tmux = {
    enable = true;
    extraConfig = ''
      set -g allow-passthrough on        

      set -g base-index 1
      setw -g pane-base-index 1

      bind -n C-h select-pane -L
      bind -n C-j select-pane -D
      bind -n C-k select-pane -U
      bind -n C-l select-pane -R
    '';
  };

  xdg.configFile."tmux/tmux.conf".force = true;

}
