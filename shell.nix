with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "dart";
    buildInputs = [
       dart_stable
    ];
}
