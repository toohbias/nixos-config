{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop Apps
    ungoogled-chromium

    # Coding
    neovim
    tree-sitter

    # CLI utils
    neofetch
    htop
    git
    ripgrep
    starship
    fzf

    # Sound
    pulseaudio

    # Other
    home-manager
    tree
    unzip

    wl-clipboard
    cliphist

    labwc

    libinput
  ];
}
