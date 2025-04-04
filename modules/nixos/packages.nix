{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    # Desktop Apps
    brave

    # Coding
    neovim

    # CLI utils
    neofetch
    git

    # Sound
    pulseaudio

    # Other
    home-manager
    tree
  ];

}
