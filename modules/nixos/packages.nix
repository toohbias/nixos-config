{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop Apps
    brave

    # Coding
    neovim
    tree-sitter
    gcc

    # CLI utils
    neofetch
    htop
    git
    ripgrep
    starship

    # Sound
    pulseaudio

    # Other
    home-manager
    tree
    unzip

    cups
  ];
}
