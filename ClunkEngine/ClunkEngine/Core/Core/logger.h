#pragma once

#include <PCH/pch.h>

typedef enum ELog_Level
{
    ELOG_FATAL = 0,

    ELOG_ERROR = 1,

    ELOG_WARN = 2,

    ELOG_INFO = 3,
} ELog_Level;

void cl_log_output(ELog_Level level, char* message, char* file_name, i32 line_number, ...);

void cl_log_validation_layer(ELog_Level, char* message, ...);

#define CLOG_FATAL(message, ...) cl_log_output(ELog_Level::ELOG_FATAL, __FILE__, __LINE__, ##__VA_ARGS__)

#define CLOG_WARN(message, ...) cl_log_output(ELog_Level::ELOG_WARN, __FILE__, __LINE__, ##__VA_ARGS__)

#define CLOG_INFO(message, ...) cl_log_output(ELog_Level::ELOG_INFO, __FILE__, __LINE__, ##__VA_ARGS__)
