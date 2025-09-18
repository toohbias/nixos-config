{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop Apps
    ungoogled-chromium

    # Coding
    neovim
    tree-sitter

    # CLI utils
    neofetch
    btop
    git
    ripgrep
    starship
    fzf

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
