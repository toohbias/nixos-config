{
  xdg.configFile."hypr/scripts/obs-monitor-scene.sh" = {
    enable = true;
    executable = true;
    text = ''
      #!/usr/bin/env bash

      declare -A SCENES=(
        ["HDMI-A-1"]="Main"
        ["HDMI-A-2"]="Left"
      )

      SOCKET="$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"
      last_scene=""

      socat -U - UNIX-CONNECT:"$SOCKET" | while read -r event; do
          case "$event" in
              focusedmon\>\>*)
                  monitor="''${event#focusedmon>>}"
                  monitor="''${monitor%%,*}"

                  scene="''${SCENES[$monitor]}"

                  # Only switch if the monitor is mapped and the scene changed
                  if [[ -n "$scene" && "$scene" != "$last_scene" ]]; then
                      obs-cmd scene switch "$scene"
                      last_scene="$scene"
                  fi
                  ;;
          esac
      done
    '';
  };
}
