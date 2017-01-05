#import <XCTest/XCTest.h>
#import "MyLibraryWrapper.h"

@interface UnitTests : XCTestCase

@end

@implementation UnitTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testDefaultInit {
    MyLibraryWrapper* wrapper = [[MyLibraryWrapper alloc] init];
    XCTAssertNotNil(wrapper);
    XCTAssertEqual(0, [wrapper value]);
}

- (void)testInitWithValue {
    MyLibraryWrapper* wrapper = [[MyLibraryWrapper alloc] init:5];
    XCTAssertNotNil(wrapper);
    XCTAssertEqual(5, [wrapper value]);
}

- (void)testAddOne {
    MyLibraryWrapper* wrapper = [[MyLibraryWrapper alloc] init:1];
    [wrapper addOne];
    XCTAssertEqual(2, [wrapper value]);
}

- (void)testSubtractOne {
    MyLibraryWrapper* wrapper = [[MyLibraryWrapper alloc] init:1];
    [wrapper subtractOne];
    XCTAssertEqual(0, [wrapper value]);
}

- (void)testResetToZero {
    MyLibraryWrapper* wrapper = [[MyLibraryWrapper alloc] init:1];
    XCTAssertEqual(1, [wrapper value]);
    [wrapper resetToZero];
    XCTAssertEqual(0, [wrapper value]);
}

@end
