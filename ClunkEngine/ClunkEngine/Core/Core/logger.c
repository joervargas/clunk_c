#include "logger.h"


void cl_log_output(ELog_Level level, char *message, char *file_name, i32 line_number, ...)
{
    const char* level_strings[4] = {"{FATAL}: ", "{ERROR}: ", "{WARN}: ", "{INFO}: "};
    const char* color_code[4] = {"0;41", "1;31", "1;33", "1;32"};

    b8 is_error = level < ELOG_WARN;

    const u32 msg_length = 3200;
    char out_msg[msg_length];
    // set to zeros
    memset(out_msg, 0, sizeof(out_msg));

    // variable arguments
    VA_LIST args_ptr;
    va_start(args_ptr, line_number);
        VSN_PRINTF(out_msg, msg_length, out_msg[0], args_ptr);
    va_end(args_ptr);

    printf("\033[%sm%s%s\n%s %d\033[0m", color_code[level], level_strings[level], out_msg, file_name, line_number);
}
