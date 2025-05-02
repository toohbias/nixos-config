{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop Apps
    brave

    # Coding
    
    tree-sitter
    gcc

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
