add_library(STB_Image
    src/stb_image.c
    src/stb_image_write.c
)

target_include_directories(STB_Image
    PUBLIC 
        include
        src
)
