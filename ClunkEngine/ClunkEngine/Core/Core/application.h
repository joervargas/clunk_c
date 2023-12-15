#pragma once

#include "app_instance.h"
#include <PCH/pch.h>

typedef struct ClApplication
{
    ClAppInstance instance;
} ClApplication;

i32 cl_create_application(ClApplication* app);

i32 cl_application_init(ClApplication* app);

i32 cl_application_run(ClApplication* app);

i32 cl_application_free(ClApplication* app);