#ifndef platform__
#define platform__

#if (defined(WIN32) || defined(_WIN32_WCE))

#include <starmicronics/platform/Win32.h>

#elif TARGET_OS_IPHONE
    #ifdef BUILDING_STARIO
        #include <starmicronics/platform/Mac.h>
    #else
        #include "Mac.h"
    #endif

#elif defined(__APPLE__)

#include <starmicronics/platform/Mac.h>

#else

#include <starmicronics/platform/Linux.h>

#endif

#endif

