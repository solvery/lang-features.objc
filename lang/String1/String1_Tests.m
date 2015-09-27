
#import <XCTest/XCTest.h>

#import "String1_ClassA.h"

@interface String1_Tests : XCTestCase

@end

@implementation String1_Tests

- (void) testString1 {
    NSString *s1 = @"hello";
    NSString *s2 = @"hello";
    
    if (s1 == s2) {
        NSLog(@"s1 == s2");
    }
    
    NSLog(@"%p %p", s1, s2);
}
- (void) testString2 {
    NSString *s1 = @"a,b,c,d";
    NSArray *a1 = [s1 componentsSeparatedByString:@","];
    for (int i=0; i<[a1 count]; i++) {
        NSLog(@"%@", [a1 objectAtIndex:i]);
    }
}
- (void) testString3 {
}

@end

