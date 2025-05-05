{
  home.file.".config/waybar/config.jsonc".text = ''
    {
        "layer": "top",
        "position": "top",
        "height": 30,
        "spacing": 4,
        "modules-left": [
            "hyprland/workspaces",
        ],
        "modules-center": [
            "clock",
        ],
        "modules-right": [
            "pulseaudio",
            "cpu",
            "memory",
            "disk",
            "network",
            "battery",
        ],
        "hyprland/workspaces": {
            "format": "{icon} {windows}",
            "on-click": "activate",
            "window-rewrite-default": "",
            "window-rewrite": {
                "class<chromium-browser>": "",
                "title<.*YouTube.*>": "",
                "title<.*/.*at.*>": "",
                "title<.*Stack Overflow.*>": "",
                "class<kitty>": "",
                "title<nvim>": "",
                "class<thunderbird>": "",
                "class<jetbrains-idea>": "",
                "class<libreoffice-writer>": "",
                "class<libreoffice-impress>": "󱎐",
                "class<spotify>": ""
            }
        },
        "clock": {
            "format": "{:%R  %A %b %d}"
        },
        "pulseaudio": {
            "format": "{volume}% {icon}",
            "format-bluetooth": "{volume}% {icon}",
            "format-icons": {
                "headphone": "",
                "hands-free": "",
                "headset": "",
                "phone": "",
                "portable": "",
                "car": "",
                "default": ["", "", ""]
            },
        },
        "cpu": {
            "format": "{usage}% "
        },
        "memory": {
            "format": "{percentage}% "
        },
        "disk": {
            "format": "{percentage_used}% 󰋊"
        },
        "network": {
            "format": "󰤨",
            "format-disconnected": "󰤮",
        },
        "battery": {
            "states": {
                // "good": 95,
                "warning": 30,
                "critical": 15
            },
            "format": "{capacity}% {icon}",
            "format-full": "{capacity}% {icon}",
            "format-charging": "{capacity}% ",
            "format-plugged": "{capacity}% ",
            "format-alt": "{time} {icon}",
            // "format-good": "", // An empty format will hide the module
            // "format-full": "",
            "format-icons": ["", "", "", "", ""]
        },
    }
  '';
}
