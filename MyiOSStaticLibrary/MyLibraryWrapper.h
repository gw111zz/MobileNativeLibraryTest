#import <Foundation/Foundation.h>
#import "MyLibrary.h"

@interface MyLibraryWrapper : NSObject

- (nullable instancetype)init;

- (nullable instancetype)init:(NSInteger)initialValue;

- (NSInteger)value;

- (void)addOne;

- (void)subtractOne;

- (void)resetToZero;

@end
