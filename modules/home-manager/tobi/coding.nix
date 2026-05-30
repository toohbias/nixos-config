{ pkgs, ... }: {

  home.packages = with pkgs; [
    jdk25

    gcc
    ninja
    gnumake
    cmake

    rustup

    jupyter

    typst

    zig

    go

    ghc
    cabal-install
    haskell-language-server

    nodejs_24

    gdb
    lldb
    valgrind
  ];

  # programs.bash.sessionVariables = {
  #   JAVA_HOME = pkgs.jdk25.outPath;
  # };
}
