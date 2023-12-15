# Install script for directory: /home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/llvm-objdump-15")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/joe/Projects/C/clunk_c/build/bin/libSPVRemapper.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/joe/Projects/C/clunk_c/build/bin/libSPIRV.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake" TYPE FILE FILES "/home/joe/Projects/C/clunk_c/build/_deps/glslang-build/SPIRV/SPVRemapperTargets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake" TYPE FILE FILES "/home/joe/Projects/C/clunk_c/build/_deps/glslang-build/SPIRV/SPIRVTargets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/glslang/SPIRV" TYPE FILE FILES
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/bitutils.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/spirv.hpp"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/GLSL.std.450.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/GLSL.ext.EXT.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/GLSL.ext.KHR.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/GlslangToSpv.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/hex_float.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/Logger.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/SpvBuilder.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/spvIR.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/doc.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/SpvTools.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/disassemble.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/GLSL.ext.AMD.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/GLSL.ext.NV.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/GLSL.ext.ARM.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/NonSemanticDebugPrintf.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/NonSemanticShaderDebugInfo100.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/SPVRemapper.h"
    "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/SPIRV/doc.h"
    )
endif()

