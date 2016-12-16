#import "MyLibraryWrapper.h"

#include <climits>
#include <memory>
#include "MyLibrary.h"

@interface MyLibraryWrapper ()

@end

@implementation MyLibraryWrapper
{
    std::unique_ptr<MyLibrary> _cppMyLibrary;
}

- (nullable instancetype)init
{
    return [self init:0];
}

- (nullable instancetype)init:(NSInteger)initialValue
{
    self = [super init];
    if (self != nil)
    {
        if (initialValue > INT_MAX || initialValue < INT_MIN)
        {
            @throw NSInvalidArgumentException;
        }
        else
        {
            _cppMyLibrary = std::unique_ptr<MyLibrary>(new MyLibrary((int)initialValue));
        }
    }
    return self;
}

- (NSInteger)value
{
    return _cppMyLibrary->getValue();
}

- (void)addOne
{
    _cppMyLibrary->addOne();
}

- (void)subtractOne
{
    _cppMyLibrary->subtractOne();
}

- (void)resetToZero
{
    _cppMyLibrary->resetToZero();
}

@end

