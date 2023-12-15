project(ClunkEngine VERSION 0.0.1)


file(GLOB SRC_FILES 
    ${PROJECT_NAME}/*.c
)

file(GLOB HDR_FILES
    ${PROJECT_NAME}/*.h
)

set(Engine_DIR ${CMAKE_CURRENT_SOURCE_DIR}/ClunkEngine)
add_subdirectory(${Engine_DIR}/PCH)
add_subdirectory(${Engine_DIR}/Core)

if(${VULKAN_GRAPHICS})
    add_compile_definitions(VK_GFX)
    message("Vulkan found in ${Target}!")
else()
    message("***Vulkan not found in ${Target}***")
endif()

add_library(${PROJECT_NAME}
    ${SRC_FILES}
)

target_sources(${PROJECT_NAME}
    PUBLIC
        ${HDR_FILES}
    PRIVATE
        ${SRC_FILES}
)

target_include_directories(${PROJECT_NAME}
    PUBLIC
        ${PROJECT_NAME}/
)

target_link_libraries(${PROJECT_NAME}
    SDL2::SDL2
    SDL2::SDL2main
    PCH
    Core
)

if(${VULKAN_GRAPHICS})
    target_link_libraries(${PROJECT_NAME}
        # vulkan
        # ClVulkan/
        # ClVulkanRenderer
    )
endif()
