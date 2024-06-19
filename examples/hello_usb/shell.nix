{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    buildInputs = [
      pkgs.cmake
      pkgs.gcc-arm-embedded
      pkgs.minicom
    ];

    shellHook = ''
      echo Initialzing environment with Pi Pico toolchain...

      echo Setting the 'PICO_SDK_PATH' to cloned 'pico-sdk' path...
      PICO_SDK_PATH=${toString ../../pico-sdk}
      export PICO_SDK_PATH
      
      echo Setting the 'PICO_BOARD' to 'pico_w'...
      PICO_BOARD=pico_w
      export PICO_BOARD

      echo Installing minicom for usb serial communication...

      echo Ready to build for Pi Pico W!
    '';
}