let configuration = widget: ''
    "layer": "top",
    "position": "top",
    "modules-left": [
        "hyprland/workspaces"
    ],
    "modules-center": [
        "clock"
    ],
    "modules-right": [
        "pulseaudio",
        "custom/spacer",
        "cpu",
        "custom/spacer",
        "memory",
        "custom/spacer",
        "disk",
        ${widget}
    ],
    "custom/spacer": {
        "format": " ",
        "tooltip": false
    },
    "hyprland/workspaces": {
        "format": "{icon} {windows}",
        "on-click": "activate",
        "window-rewrite-default": " ",
        "window-rewrite": {
            "class<chromium-browser>": " ",
            "title<.*YouTube.*>": " ",
            "title<.*/.*at.*>": " ",
            "title<.*Stack Overflow.*>": " ",
            "class<kitty>": " ",
            "title<nvim.*>": " ",
            "class<thunderbird>": " ",
            "class<jetbrains-idea>": " ",
            "class<libreoffice-writer>": " ",
            "class<libreoffice-impress>": "󱎐 ",
            "class<spotify>": " ",
            "class<Gimp.*>": " ",
            "class<discord>": " ",
            "class<kitty> title<.*tmux.*>": " "
        }
    },
    "clock": {
        "format": "{:%R  %A %b %d}"
    },
    "pulseaudio": {
        "format": "{volume}% {icon}",
        "format-bluetooth": "{volume}% {icon}",
        "format-icons": {
            "headphone": " ",
            "hands-free": "",
            "headset": " ",
            "phone": " ",
            "portable": " ",
            "car": " ",
            "default": " "
        }
    },
    "cpu": {
        "format": "{usage}%  "
    },
    "memory": {
        "format": "{percentage}%  "
    },
    "disk": {
        "format": "{percentage_used}% 󰋊 "
    },
    "network": {
        "format-ethernet": "󰈀 ",
        "format-wifi": "󰤨 ",
        "format-disconnected": "󰤭 ",
        "tooltip-format": " {bandwidthDownBytes}  {bandwidthUpBytes}"
    },
    "custom/logout": {
        "on-click": "hyprctl dispatch exit",
        "format": " 󰗽 ",
        "tooltip": false
    },
    "custom/poweroff": {
        "on-click": "shutdown 0",
        "format": " 󰐥 ",
        "tooltip": false
    }
  '';
in
{
  home.file.".config/waybar/config.jsonc".text = ''
    [{
        "output": "HDMI-A-1",
        ${configuration
            ''
                "custom/logout",
                "custom/poweroff"
            ''
        }
    },
    {
        "output": "HDMI-A-2",
        ${configuration 
            ''
                "custom/spacer",
                "network"
            ''
        }
    }]
  '';
}
