{pkgs, inputs, system, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop Apps
    ungoogled-chromium

    # Coding
    neovim
    tree-sitter

    # CLI utils
    fastfetch
    zoxide
    btop
    git
    ripgrep
    starship
    eza

    # Other
    home-manager
    tree
    zip
    unzip

    wl-clipboard
    cliphist

    libinput

    # Winboat
    # winboat
  ];
}
