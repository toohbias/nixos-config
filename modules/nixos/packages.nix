{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop Apps
    ungoogled-chromium

    # Coding
    neovim
    tree-sitter

    # CLI utils
    fastfetch
    btop
    git
    ripgrep
    starship

    # Other
    home-manager
    tree
    unzip

    wl-clipboard
    cliphist

    libinput
  ];
}
