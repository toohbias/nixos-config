{ pkgs ? import <nixpkgs> {} }: pkgs.stdenv.mkDerivation {
    pname = "hypr-rdp";
    version = "0.1.0";

    src = builtins.fetchurl "https://github.com/MuNeNiCK/hypr-rdp/releases/download/v0.1.0/hypr-rdp-v0.1.0-x86_64-linux.tar.gz";

    nativeBuildInputs = with pkgs; [
        autoPatchelfHook
    ];

    buildInputs = with pkgs; [
        libva
        pipewire
        libxkbcommon

        libgbm
        libz
        libgcc

        stdenv.cc.cc
    ];

    sourceRoot = ".";

    installPhase = ''
        runHook preInstall
        install -Dm755 hypr-rdp $out/bin/hypr-rdp
        runHook postInstall
    '';
}
