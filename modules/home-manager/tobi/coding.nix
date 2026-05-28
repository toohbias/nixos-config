{ pkgs, ... }: {

  home.packages = with pkgs; [
    lldb

    # Java
    jdk25

    # C
    gcc
    ninja
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
    nodejs_24

    # debugging
    gdb
    valgrind
  ];

  # programs.bash.sessionVariables = {
  #   JAVA_HOME = pkgs.jdk25.outPath;
  # };
}
