
#import <XCTest/XCTest.h>

#import "ARC1_ClassA.h"

@interface ARC1_Tests : XCTestCase

@end

@implementation ARC1_Tests

- (void) testARC1 {
    ARC1_ClassA *o1 = [[ARC1_ClassA alloc] init];
    //NSLog(@"retainCount: %lu", [o1 retainCount]);
}

@end

