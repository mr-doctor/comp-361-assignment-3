# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /cygdrive/c/Users/Daniel/.CLion2018.1/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/Daniel/.CLion2018.1/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/a1.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/a1.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/a1.dir/flags.make

src/CMakeFiles/a1.dir/ex1.cpp.o: src/CMakeFiles/a1.dir/flags.make
src/CMakeFiles/a1.dir/ex1.cpp.o: ../src/ex1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/a1.dir/ex1.cpp.o"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a1.dir/ex1.cpp.o -c /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/ex1.cpp

src/CMakeFiles/a1.dir/ex1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a1.dir/ex1.cpp.i"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/ex1.cpp > CMakeFiles/a1.dir/ex1.cpp.i

src/CMakeFiles/a1.dir/ex1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a1.dir/ex1.cpp.s"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/ex1.cpp -o CMakeFiles/a1.dir/ex1.cpp.s

src/CMakeFiles/a1.dir/ex1.cpp.o.requires:

.PHONY : src/CMakeFiles/a1.dir/ex1.cpp.o.requires

src/CMakeFiles/a1.dir/ex1.cpp.o.provides: src/CMakeFiles/a1.dir/ex1.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/a1.dir/build.make src/CMakeFiles/a1.dir/ex1.cpp.o.provides.build
.PHONY : src/CMakeFiles/a1.dir/ex1.cpp.o.provides

src/CMakeFiles/a1.dir/ex1.cpp.o.provides.build: src/CMakeFiles/a1.dir/ex1.cpp.o


src/CMakeFiles/a1.dir/main.cpp.o: src/CMakeFiles/a1.dir/flags.make
src/CMakeFiles/a1.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/a1.dir/main.cpp.o"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a1.dir/main.cpp.o -c /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/main.cpp

src/CMakeFiles/a1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a1.dir/main.cpp.i"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/main.cpp > CMakeFiles/a1.dir/main.cpp.i

src/CMakeFiles/a1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a1.dir/main.cpp.s"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/main.cpp -o CMakeFiles/a1.dir/main.cpp.s

src/CMakeFiles/a1.dir/main.cpp.o.requires:

.PHONY : src/CMakeFiles/a1.dir/main.cpp.o.requires

src/CMakeFiles/a1.dir/main.cpp.o.provides: src/CMakeFiles/a1.dir/main.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/a1.dir/build.make src/CMakeFiles/a1.dir/main.cpp.o.provides.build
.PHONY : src/CMakeFiles/a1.dir/main.cpp.o.provides

src/CMakeFiles/a1.dir/main.cpp.o.provides.build: src/CMakeFiles/a1.dir/main.cpp.o


src/CMakeFiles/a1.dir/cgra/bone.cpp.o: src/CMakeFiles/a1.dir/flags.make
src/CMakeFiles/a1.dir/cgra/bone.cpp.o: ../src/cgra/bone.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/a1.dir/cgra/bone.cpp.o"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a1.dir/cgra/bone.cpp.o -c /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/bone.cpp

src/CMakeFiles/a1.dir/cgra/bone.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a1.dir/cgra/bone.cpp.i"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/bone.cpp > CMakeFiles/a1.dir/cgra/bone.cpp.i

src/CMakeFiles/a1.dir/cgra/bone.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a1.dir/cgra/bone.cpp.s"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/bone.cpp -o CMakeFiles/a1.dir/cgra/bone.cpp.s

src/CMakeFiles/a1.dir/cgra/bone.cpp.o.requires:

.PHONY : src/CMakeFiles/a1.dir/cgra/bone.cpp.o.requires

src/CMakeFiles/a1.dir/cgra/bone.cpp.o.provides: src/CMakeFiles/a1.dir/cgra/bone.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/a1.dir/build.make src/CMakeFiles/a1.dir/cgra/bone.cpp.o.provides.build
.PHONY : src/CMakeFiles/a1.dir/cgra/bone.cpp.o.provides

src/CMakeFiles/a1.dir/cgra/bone.cpp.o.provides.build: src/CMakeFiles/a1.dir/cgra/bone.cpp.o


src/CMakeFiles/a1.dir/cgra/mesh.cpp.o: src/CMakeFiles/a1.dir/flags.make
src/CMakeFiles/a1.dir/cgra/mesh.cpp.o: ../src/cgra/mesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/a1.dir/cgra/mesh.cpp.o"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a1.dir/cgra/mesh.cpp.o -c /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/mesh.cpp

src/CMakeFiles/a1.dir/cgra/mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a1.dir/cgra/mesh.cpp.i"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/mesh.cpp > CMakeFiles/a1.dir/cgra/mesh.cpp.i

src/CMakeFiles/a1.dir/cgra/mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a1.dir/cgra/mesh.cpp.s"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/mesh.cpp -o CMakeFiles/a1.dir/cgra/mesh.cpp.s

src/CMakeFiles/a1.dir/cgra/mesh.cpp.o.requires:

.PHONY : src/CMakeFiles/a1.dir/cgra/mesh.cpp.o.requires

src/CMakeFiles/a1.dir/cgra/mesh.cpp.o.provides: src/CMakeFiles/a1.dir/cgra/mesh.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/a1.dir/build.make src/CMakeFiles/a1.dir/cgra/mesh.cpp.o.provides.build
.PHONY : src/CMakeFiles/a1.dir/cgra/mesh.cpp.o.provides

src/CMakeFiles/a1.dir/cgra/mesh.cpp.o.provides.build: src/CMakeFiles/a1.dir/cgra/mesh.cpp.o


src/CMakeFiles/a1.dir/cgra/shader.cpp.o: src/CMakeFiles/a1.dir/flags.make
src/CMakeFiles/a1.dir/cgra/shader.cpp.o: ../src/cgra/shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/a1.dir/cgra/shader.cpp.o"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a1.dir/cgra/shader.cpp.o -c /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/shader.cpp

src/CMakeFiles/a1.dir/cgra/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a1.dir/cgra/shader.cpp.i"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/shader.cpp > CMakeFiles/a1.dir/cgra/shader.cpp.i

src/CMakeFiles/a1.dir/cgra/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a1.dir/cgra/shader.cpp.s"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/shader.cpp -o CMakeFiles/a1.dir/cgra/shader.cpp.s

src/CMakeFiles/a1.dir/cgra/shader.cpp.o.requires:

.PHONY : src/CMakeFiles/a1.dir/cgra/shader.cpp.o.requires

src/CMakeFiles/a1.dir/cgra/shader.cpp.o.provides: src/CMakeFiles/a1.dir/cgra/shader.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/a1.dir/build.make src/CMakeFiles/a1.dir/cgra/shader.cpp.o.provides.build
.PHONY : src/CMakeFiles/a1.dir/cgra/shader.cpp.o.provides

src/CMakeFiles/a1.dir/cgra/shader.cpp.o.provides.build: src/CMakeFiles/a1.dir/cgra/shader.cpp.o


src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o: src/CMakeFiles/a1.dir/flags.make
src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o: ../src/cgra/wavefront.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a1.dir/cgra/wavefront.cpp.o -c /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/wavefront.cpp

src/CMakeFiles/a1.dir/cgra/wavefront.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a1.dir/cgra/wavefront.cpp.i"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/wavefront.cpp > CMakeFiles/a1.dir/cgra/wavefront.cpp.i

src/CMakeFiles/a1.dir/cgra/wavefront.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a1.dir/cgra/wavefront.cpp.s"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/wavefront.cpp -o CMakeFiles/a1.dir/cgra/wavefront.cpp.s

src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o.requires:

.PHONY : src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o.requires

src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o.provides: src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/a1.dir/build.make src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o.provides.build
.PHONY : src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o.provides

src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o.provides.build: src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o


src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o: src/CMakeFiles/a1.dir/flags.make
src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o: ../src/cgra/imgui_impl_glfw_gl3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o -c /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/imgui_impl_glfw_gl3.cpp

src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.i"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/imgui_impl_glfw_gl3.cpp > CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.i

src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.s"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src/cgra/imgui_impl_glfw_gl3.cpp -o CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.s

src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o.requires:

.PHONY : src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o.requires

src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o.provides: src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/a1.dir/build.make src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o.provides.build
.PHONY : src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o.provides

src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o.provides.build: src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o


# Object files for target a1
a1_OBJECTS = \
"CMakeFiles/a1.dir/ex1.cpp.o" \
"CMakeFiles/a1.dir/main.cpp.o" \
"CMakeFiles/a1.dir/cgra/bone.cpp.o" \
"CMakeFiles/a1.dir/cgra/mesh.cpp.o" \
"CMakeFiles/a1.dir/cgra/shader.cpp.o" \
"CMakeFiles/a1.dir/cgra/wavefront.cpp.o" \
"CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o"

# External object files for target a1
a1_EXTERNAL_OBJECTS =

bin/a1.exe: src/CMakeFiles/a1.dir/ex1.cpp.o
bin/a1.exe: src/CMakeFiles/a1.dir/main.cpp.o
bin/a1.exe: src/CMakeFiles/a1.dir/cgra/bone.cpp.o
bin/a1.exe: src/CMakeFiles/a1.dir/cgra/mesh.cpp.o
bin/a1.exe: src/CMakeFiles/a1.dir/cgra/shader.cpp.o
bin/a1.exe: src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o
bin/a1.exe: src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o
bin/a1.exe: src/CMakeFiles/a1.dir/build.make
bin/a1.exe: /cygdrive/c/MinGW/lib/libopengl32.a
bin/a1.exe: /cygdrive/c/MinGW/lib/libglu32.a
bin/a1.exe: bin/libglfw3.a
bin/a1.exe: /usr/lib/libX11.dll.a
bin/a1.exe: /usr/lib/libXrandr.dll.a
bin/a1.exe: /usr/lib/libXinerama.dll.a
bin/a1.exe: /usr/lib/librt.a
bin/a1.exe: /usr/lib/libm.a
bin/a1.exe: /usr/lib/libXcursor.dll.a
bin/a1.exe: /cygdrive/c/MinGW/lib/libopengl32.a
bin/a1.exe: bin/libglew.a
bin/a1.exe: bin/libimgui.a
bin/a1.exe: /cygdrive/c/MinGW/lib/libopengl32.a
bin/a1.exe: /cygdrive/c/MinGW/lib/libglu32.a
bin/a1.exe: src/CMakeFiles/a1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable ../bin/a1.exe"
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/a1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/a1.dir/build: bin/a1.exe

.PHONY : src/CMakeFiles/a1.dir/build

src/CMakeFiles/a1.dir/requires: src/CMakeFiles/a1.dir/ex1.cpp.o.requires
src/CMakeFiles/a1.dir/requires: src/CMakeFiles/a1.dir/main.cpp.o.requires
src/CMakeFiles/a1.dir/requires: src/CMakeFiles/a1.dir/cgra/bone.cpp.o.requires
src/CMakeFiles/a1.dir/requires: src/CMakeFiles/a1.dir/cgra/mesh.cpp.o.requires
src/CMakeFiles/a1.dir/requires: src/CMakeFiles/a1.dir/cgra/shader.cpp.o.requires
src/CMakeFiles/a1.dir/requires: src/CMakeFiles/a1.dir/cgra/wavefront.cpp.o.requires
src/CMakeFiles/a1.dir/requires: src/CMakeFiles/a1.dir/cgra/imgui_impl_glfw_gl3.cpp.o.requires

.PHONY : src/CMakeFiles/a1.dir/requires

src/CMakeFiles/a1.dir/clean:
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/a1.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/a1.dir/clean

src/CMakeFiles/a1.dir/depend:
	cd /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/src /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src /cygdrive/c/Users/Daniel/workspace/cgra350/cgra-350-assignment-2/work/cmake-build-debug/src/CMakeFiles/a1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/a1.dir/depend
