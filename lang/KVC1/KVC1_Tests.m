
#import <XCTest/XCTest.h>

#import "KVC1_ClassA.h"

@interface KVC1_Tests : XCTestCase

@end

@implementation KVC1_Tests

- (void) testKVC1 {
    KVC1_ClassA *o1 = [[KVC1_ClassA alloc] init];
    [o1 setValue:@"John" forKey:@"name"];
    NSString *s1 = [o1 valueForKey:@"name"];
    NSLog(@"%@", s1);
}

@end

