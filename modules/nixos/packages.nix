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

    # Sound
    pulseaudio

    # Other
    home-manager
    tree
    unzip

    wl-clipboard
    cliphist

    greetd.tuigreet
  ];
}
