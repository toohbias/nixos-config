{pkgs, config, ... }: {

  programs.tmux = {
    enable = true;
    extraConfig = ''
      set -g allow-passthrough on        

      bind -n C-h select-pane -L
      bind -n C-j select-pane -D
      bind -n C-k select-pane -U
      bind -n C-l select-pane -R
    '';
    baseIndex = 1;
  };

  # xdg.configFile."tmux/tmux.conf".force = true;

}
