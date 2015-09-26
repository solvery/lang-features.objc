
#import <XCTest/XCTest.h>
#import <Foundation/Foundation.h>

#import "Exception1_ClassA.h"
#import "Exception1_EA.h"
#import "Exception1_Eb.h"

@interface Exception1_Tests : XCTestCase

@end

@implementation Exception1_Tests

- (void) testException1 {
    Exception1_ClassA *oa1 = [[Exception1_ClassA alloc] init];
    /// [oa1 m1:6];
    
    for (int i=-2; i<6; i++) {
        @try {
            [oa1 m1:i];
        }
        @catch (Exception1_EA *e) {
            NSLog(@"%@ %@", [e name], [e reason]);
        }
        @catch (Exception1_EB *e) {
            NSLog(@"%@ %@", [e name], [e reason]);
        }
        @catch (NSException *e) {
            NSLog(@"%@ %@", [e name], [e reason]);
        }
        @finally {
            //NSLog(@"continue");
        }
    }
}

@end

