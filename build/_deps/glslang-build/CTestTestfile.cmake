# CMake generated Testfile for 
# Source directory: /home/joe/Projects/C/clunk_c/build/_deps/glslang-src
# Build directory: /home/joe/Projects/C/clunk_c/build/_deps/glslang-build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(glslang-testsuite "bash" "runtests" "/home/joe/Projects/C/clunk_c/build/_deps/glslang-build/localResults" "/home/joe/Projects/C/clunk_c/build/_deps/glslang-build/StandAlone/glslangValidator" "/home/joe/Projects/C/clunk_c/build/_deps/glslang-build/StandAlone/spirv-remap")
set_tests_properties(glslang-testsuite PROPERTIES  WORKING_DIRECTORY "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/Test/" _BACKTRACE_TRIPLES "/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/CMakeLists.txt;330;add_test;/home/joe/Projects/C/clunk_c/build/_deps/glslang-src/CMakeLists.txt;0;")
subdirs("External")
subdirs("glslang")
subdirs("OGLCompilersDLL")
subdirs("StandAlone")
subdirs("SPIRV")
subdirs("hlsl")
subdirs("gtests")
