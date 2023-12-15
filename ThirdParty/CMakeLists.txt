set(Target ThirdParty)

include(FetchContent)

# set(CMAKE_DEBUG_POSTFIX "")
message("Fetching Engine Content...")
message("Fetching SDL2...")
FetchContent_Declare(
    SDL2
    GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
    GIT_TAG release-2.26.5
)
FetchContent_MakeAvailable(SDL2)

message("Fetching glslang...")
FetchContent_Declare(
    glslang
    GIT_REPOSITORY https://github.com/KhronosGroup/glslang.git
    GIT_TAG sdk-1.3.250.1
)
FetchContent_MakeAvailable(glslang)


find_package(Vulkan REQUIRED)
if(VULKAN_FOUND)
    # add_compile_definitions(VK_NO_PROTOTYPES)
    set(VULKAN_GRAPHICS ON PARENT_SCOPE)
    message("Vulkan found!")
else()
    Set(VULKAN_GRAPHICS OFF PARENT_SCOPE)
    message("***Vulkan not found***")
endif()

find_package(Threads REQUIRED)

add_subdirectory(./Json)
add_subdirectory(./STB_Image)
add_subdirectory(./MeshOptimizer)
add_subdirectory(./VkMemAllocator)