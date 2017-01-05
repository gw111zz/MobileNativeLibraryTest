#import <Foundation/Foundation.h>
#include "MyLibrary.h"

@interface MyLibraryWrapper : NSObject

- (nullable instancetype)init;

- (nullable instancetype)init:(NSInteger)initialValue;

- (NSInteger)value;

- (void)addOne;

- (void)subtractOne;

- (void)resetToZero;

@end
