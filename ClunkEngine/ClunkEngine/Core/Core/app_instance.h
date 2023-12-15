#pragma once

#include <PCH/pch.h>

typedef struct ClAppInstance
{
    b8 (*initialize)(struct ClAppInstance* App);
    b8 (*update)(struct ClAppInstance* App, float delta_time);
    b8 (*render)(struct ClAppInstance* App, float delta_time);
    void (*on_resize)(struct ClAppInstance* App, u32 width, u32 height);

    void* state;
} ClAppInstance;