{ pkgs ? import <nixpkgs> {} }: pkgs.stdenv.mkDerivation {
    pname = "hypr-rdp";
    version = "0.1.0";

    src = builtins.fetchurl "https://github.com/MuNeNiCK/hypr-rdp/releases/download/v0.1.0/hypr-rdp-v0.1.0-x86_64-linux.tar.gz";

    nativeBuildInputs = with pkgs; [
        autoPatchelfHook
        makeWrapper
    ];

    buildInputs = with pkgs; [
        libva
        pipewire
        libxkbcommon

        libgbm
        libz
        libgcc

        stdenv.cc.cc

        intel-media-driver
        intel-vaapi-driver
        vaapi-intel-hybrid
        libva
        libva1
        libva-utils
        openh264
        x264
    ];

    sourceRoot = ".";

    installPhase = ''
        runHook preInstall
        install -Dm755 hypr-rdp $out/bin/hypr-rdp
        runHook postInstall
    '';

    postFixup = ''
        wrapProgram $out/bin/hypr-rdp --prefix LD_LIBRARY_PATH : ${pkgs.lib.makeLibraryPath (with pkgs; [
            openh264
            intel-media-driver
            intel-vaapi-driver
            libva
            libva1
        ])}
    '';
}
