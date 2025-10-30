{ pkgs, ... }: {

  home.packages = with pkgs; [

    # Java
    javaPackages.openjfx21
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

    # Haskell
    ghc
    cabal-install
    haskell-language-server
  ];

}
