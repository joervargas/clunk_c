#pragma once

#include "application.h"
#include <PCH/pch.h>

extern i32 cl_create_application(ClApplication* application);

int main(void)
{
    ClApplication application;
    if(cl_create_application(&application))
    {
        return -1;
    }

    if(cl_application_init(&application))
    {
        return -1;
    }

    if(cl_application_run(&application))
    {
        return -1;
    }

    if(cl_application_free(&application))
    {
        return -1;
    }
    
    return 0;
}