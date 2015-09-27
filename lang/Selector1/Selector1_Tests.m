
#import <objc/message.h>
#import <XCTest/XCTest.h>

#import "Selector1_ClassA.h"

@interface Selector1_Tests : XCTestCase

@end

@implementation Selector1_Tests

- (void) testSelector1 {
    Selector1_ClassA *o1 = [[Selector1_ClassA alloc] init];
    /// objc_msgSend(o1, @selector(m1:), @"");
    // buildSetting -> Enable Strict Checking of objc_mesgSend Calls 设为NO, no use.
}

@end

