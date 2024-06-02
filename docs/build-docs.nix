{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    buildInputs = [
        pkgs.marp-cli
        pkgs.chromium
        pkgs.jpegoptim
    ];

    shellHook = ''
        echo "Compressing images with jpegoptim..."
        ./compress-jpgs.sh
        if [ $? -eq 1 ];then
            echo "Image compression failed. Try again."
            exit 1
        else
            echo "Image compression successful!"
        fi

        echo "Entered nix-shell with marp-cli!"
        echo "Building the docs with marp...\n"
        ./build-docs.sh

        # Check for successfull marp build
        if [ $? -eq 1 ];then
            echo Marp build unsuccessful. Try again.
            exit 1
        else
            echo Marp build successful!
            exit 0
        fi       
    '';
}