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

# Create a build dir if not exists
if [ ! -d "build" ]; then
  mkdir build
fi
BUILD_DIR=build/

# Get the project name
PROJECT_NAME=$(basename $(pwd))

# Run CMake from within build for pico_w board
cd $BUILD_DIR
cmake .. -DPICO_BOARD=pico_w

# Build the project
make $PROJECT_NAME