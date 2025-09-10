let configuration = ''
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
        "custom/spacer",
        "network"
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
            "class<labwc>": " ",
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
  '';
in
{
  home.file.".config/waybar/config.jsonc".text = ''
    [{
        "output": "HDMI-A-1",
        ${configuration}
        "network": {
            "format": " {bandwidthDownBytes}  {bandwidthUpBytes}",
        }
    },
    {
        "output": "HDMI-A-2",
        ${configuration}
        "network": {
            "format-ethernet": "󰈀 ",
            "format-wifi": "󰤨 ",
            "format-disconnected": "󰤭 "
        }
    }]
  '';
}
