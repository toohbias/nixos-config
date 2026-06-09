{
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    escapeTime = 0;
    extraConfig = ''
      set -g allow-passthrough on        

      bind -n C-h select-pane -L
      bind -n C-j select-pane -D
      bind -n C-k select-pane -U
      bind -n C-l select-pane -R

      bind -n C-n new-window
      bind -n C-q kill-window

      # chooses split direction based on pane aspect ratio
      bind -n C-t run-shell '
        pane_width=$(tmux display-message -p "#{pane_width}")
        pane_height=$(expr $(tmux display-message -p "#{pane_height}") \* 2)

        if [ "$pane_width" -gt "$pane_height" ]; then
          # Wide pane → split vertically
          tmux split-window -h
        else
          # Tall pane → split horizontally
          tmux split-window -v
        fi
      '
      bind -n C-w kill-pane

      bind -n C-v copy-mode

      bind -n C-1 select-window -t 1
      bind -n C-2 select-window -t 2
      bind -n C-3 select-window -t 3
      bind -n C-4 select-window -t 4
      bind -n C-5 select-window -t 5
      bind -n C-6 select-window -t 6
      bind -n C-7 select-window -t 7
      bind -n C-8 select-window -t 8
      bind -n C-9 select-window -t 9
    '';
    baseIndex = 1;
  };
}
