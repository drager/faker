with import <nixpkgs> {};

let dart-beta = stdenv.mkDerivation {
    name = "dart-2.12.0-259.15.beta";
    src = fetchurl {
      url = "https://storage.googleapis.com/dart-archive/channels/beta/release/2.12.0-259.15.beta/sdk/dartsdk-linux-x64-release.zip";
      sha256 = "1a1434a869e5ad3772071a4b75ef2c1d830fe1c659e3b9465907e31fe42e308b";
    };
    nativeBuildInputs = [
      unzip
    ];
    installPhase = ''
      mkdir -p $out
      cp -R * $out/
      echo $libPath
      find $out/bin -executable -type f -exec patchelf --set-interpreter $(cat $NIX_CC/nix-support/dynamic-linker) {} \;
    '';

    libPath = lib.makeLibraryPath [ stdenv.cc.cc ];

    dontStrip = true;
  };
in stdenv.mkDerivation {
  name = "dart-beta";
  buildInputs = [ dart-beta ];
}
