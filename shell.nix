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
      pkgs.raylib
    ];

    shellHook = ''
      export LD_LIBRARY_PATH=${pkgs.raylib}/lib:$LD_LIBRARY_PATH
    '';
  }
