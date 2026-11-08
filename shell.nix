let
  pkgs = import <nixpkgs> {};
in
  pkgs.clangStdenv.mkDerivation {
    name = "dev-shell";

    src = null;

    nativeBuildInputs = [
      pkgs.clang-tools
      pkgs.gnumake
    ];

    buildInputs = [
    ];

    shellHook = ''
    '';
  }
