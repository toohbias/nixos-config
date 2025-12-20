{ pkgs, ... }: {

  home.packages = with pkgs; [

    # Java
    javaPackages.openjfx25
    (pkgs.jdk21.override {enableJavaFX = true;})

    # C
    gcc
    gdb
    gnumake
    cmake

    # Rust
    rustup

    # Python
    jupyter

    # Typst
    typst

    # Zig
    zig

    # Go
    go

    # Haskell
    ghc
    cabal-install
    haskell-language-server

    # JS
    node
  ];

}
