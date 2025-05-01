pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop Apps
    brave

    # Coding
    neovim
    tree-sitter

    # CLI utils
    neofetch
    htop
    git
    starship

    # Sound
    pulseaudio

    # Other
    home-manager
    tree
    unzip
  ];
}
