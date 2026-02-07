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
    lazygit

    # Other
    home-manager
    tree
    zip
    unzip
    file

    wl-clipboard
    cliphist

    libinput

    # Winboat
    # winboat

    qemu
    dnsmasq
  ];
}
