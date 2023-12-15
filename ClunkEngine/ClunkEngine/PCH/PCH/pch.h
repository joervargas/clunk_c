#pragma once

#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <strings.h>
#include <assert.h>
#include <stdio.h>
#include <memory.h>

// Unsigned int types

/** @brief Unsigned 8-bit integer */
typedef unsigned char u8;

/** @brief Unsigned 16-bit integer */
typedef uint16_t u16;

/** @brief Unsigned 32-bit integer */
typedef uint32_t u32;

/** @brief Unsigned 64-bit integer */
typedef uint64_t u64;

// Signed int types.

/** @brief Signed 8-bit integer */
typedef signed char i8;

/** @brief Signed 16-bit integer */
typedef int16_t i16;

/** @brief Signed 32-bit integer */
typedef int32_t i32;

/** @brief Signed 64-bit integer */
typedef int64_t i64;

/** @brief 32-bit floating point number */
typedef float f32;

/** @brief 64-bit floating point number */
typedef double f64;

// Boolean types

/** @brief 32-bit boolean type, used for APIs which require it */
typedef int32_t b32;

/** @brief 8-bit boolean type */
typedef char b8;


// Platform specific
#if defined(WIN32) || defined(_WIN32) || defined(__WIN32__)
    #define VA_LIST va_list
    #define VSN_PRINTF(buff, buff_size, format_char_p, args) _vsnprintf_s(buff, buff_size, format_char_p, args)
#elif defined(__linux__) || defined(__gnu_linux__)
    #define VA_LIST __builtin_va_list
    #define VSN_PRINTF(buff, buff_size, format_char_p, args) vsnprintf(buff, buff_size, format_char_p, args)
#elif defined(__unix__)
    #define VA_LIST __builtin_va_list
    #define VSN_PRINTF(buff, buff_size, format_char_p, args) vsnprintf(buff, buff_size, format_char_p, args)
#elif defined(_POSIX_VERSION)
    #define VA_LIST __builtin_va_list
    #define VSN_PRINTF(buff, buff_size, format_char_p, args) vsnprintf(buff, buff_size, format_char_p, args)
#elif defined(__APPLE__)
    #define VA_LIST __builtin_va_list
    #define VSN_PRINTF(buff, buff_size, format_char_p, args) vsnprintf(buff, buff_size, format_char_p, args)
#else
    #error "Unknown Platform!"
#endif