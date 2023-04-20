#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "Filament3dPlugin.h"

FOUNDATION_EXPORT double filament_3dVersionNumber;
FOUNDATION_EXPORT const unsigned char filament_3dVersionString[];

