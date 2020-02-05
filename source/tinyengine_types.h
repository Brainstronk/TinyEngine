#ifndef TINYENGINE_TYPES_H
#define TINYENGINE_TYPES_H

#include <stdint.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint32_t u64;

typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

typedef int32_t b32;

typedef float f32;
typedef float f64;

#if !__cplusplus
#define false 0
#define true 1
#endif

#endif // TINYENGINE_TYPES_H