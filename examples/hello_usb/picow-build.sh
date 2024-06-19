#! /usr/bin/bash

# Build using CMake and Pico W SDK
# This script is intended to be run from the root of the project

# Check if we are inside nix-shell with pico toolchain (cmake > 3.17 and gcc-arm-embedded)
if [ ! command -v cmake &> /dev/null ]; then
  echo "CMake is not installed. Please install CMake > 3.17"
  exit 1
elif [ ! command -v arm-none-eabi-gcc &> /dev/null ]; then
  echo "GCC ARM Embedded is not installed. Please install GCC ARM Embedded"
  exit 1
fi

# Check for pico-sdk in workspaceFolder
GIT_ROOT_DIR=$(git rev-parse --show-toplevel)
if [ ! -d "$GIT_ROOT_DIR/pico-sdk" ]; then
  echo "Pico SDK not found in the root of the project. Please clone the Pico SDK in the root of the project"
  exit 1
fi

# Create a build dir if not exists
if [ ! -d "build" ]; then
  mkdir build
fi
BUILD_DIR=build/

# Verify that PICO_SDK_PATH and PICO_BOARD are set
if [ -z "$PICO_SDK_PATH" ]; then
  echo "PICO_SDK_PATH is not set. Please set the PICO_SDK_PATH environment variable"
  exit 1
fi
if [ -z "$PICO_BOARD" ]; then
  echo "PICO_BOARD is not set. Please set the PICO_BOARD environment variable"
  exit 1
fi

# Run CMake from within build for pico_w board
cd $BUILD_DIR
cmake ..

# Build the project
PROJECT_NAME=hello_usb
make $PROJECT_NAME