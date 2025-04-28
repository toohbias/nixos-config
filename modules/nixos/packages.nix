{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop Apps
    brave

    # Coding
    neovim

    # CLI utils
    neofetch
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
