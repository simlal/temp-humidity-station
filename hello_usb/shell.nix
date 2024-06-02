{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    buildInputs = [
      pkgs.cmake
      pkgs.gcc-arm-embedded
    ];

    shellHook = ''
      echo Initialzing environment with Pi Pico toolchain...
    '';
}