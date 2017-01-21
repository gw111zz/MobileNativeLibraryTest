#import <XCTest/XCTest.h>

@interface MyiOSDemoAppUITests : XCTestCase

@end

@implementation MyiOSDemoAppUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testUI {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    // Test add one
    XCUIElement* addOneResult = app.staticTexts[@"1"];
    NSPredicate* exists = [NSPredicate predicateWithFormat:@"exists == 1"];
    [self expectationForPredicate:exists evaluatedWithObject:addOneResult handler:nil];
    
    [app.buttons[@"Add One"] tap];
    
    NSUInteger timeoutSecs = 5;
    [self waitForExpectationsWithTimeout:timeoutSecs handler:nil];
    
    // Test subtract one
    XCUIElement* subtractOneResult = app.staticTexts[@"0"];
    [self expectationForPredicate:exists evaluatedWithObject:subtractOneResult handler:nil];
    
    [app.buttons[@"Subtract One"] tap];
    
    [self waitForExpectationsWithTimeout:timeoutSecs handler:nil];
    
    // Test reset to zero
    [self expectationForPredicate:exists evaluatedWithObject:addOneResult handler:nil];
    [app.buttons[@"Add One"] tap];
    [self waitForExpectationsWithTimeout:timeoutSecs handler:nil];
    
    XCUIElement* zeroResult = app.staticTexts[@"0"];
    [self expectationForPredicate:exists evaluatedWithObject:zeroResult handler:nil];
    [app.buttons[@"Reset to Zero"] tap];
    [self waitForExpectationsWithTimeout:timeoutSecs handler:nil];
}

@end
