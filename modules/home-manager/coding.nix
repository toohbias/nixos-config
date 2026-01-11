{ pkgs, ... }: {

  home.packages = with pkgs; [

    # Java
    jdk25

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
    nodejs
  ];

  programs.bash.sessionVariables = {
    JAVA_HOME = pkgs.jdk25.outPath;
  };
}
