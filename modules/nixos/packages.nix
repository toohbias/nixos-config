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

    # Other
    home-manager
    tree
    unzip

    wl-clipboard
    cliphist

    libinput

    # Winboat
    # winboat
    # (pkgs.winboat.override {nodejs_24 = pkgs.nodejs_24;})
  ];
}
