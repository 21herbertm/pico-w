# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/mherbert/pico-sdk/tools/elf2uf2"
  "/Users/mherbert/Desktop/pico-w/cmake-build-debug-mingw-arm/elf2uf2"
  "/Users/mherbert/Desktop/pico-w/cmake-build-debug-mingw-arm/hello_world/serial/elf2uf2"
  "/Users/mherbert/Desktop/pico-w/cmake-build-debug-mingw-arm/hello_world/serial/elf2uf2/tmp"
  "/Users/mherbert/Desktop/pico-w/cmake-build-debug-mingw-arm/hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp"
  "/Users/mherbert/Desktop/pico-w/cmake-build-debug-mingw-arm/hello_world/serial/elf2uf2/src"
  "/Users/mherbert/Desktop/pico-w/cmake-build-debug-mingw-arm/hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/mherbert/Desktop/pico-w/cmake-build-debug-mingw-arm/hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/${subDir}")
endforeach()
