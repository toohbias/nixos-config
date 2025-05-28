{ pkgs, ... }: {

  home.packages = with pkgs; [

    # Java
    javaPackages.openjfx21
    (pkgs.jdk21.override {enableJavaFX = true;})

    # C
    gcc

    # Rust
    rustup
  ];

}
