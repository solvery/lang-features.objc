
#import <XCTest/XCTest.h>


@interface Set1_Tests : XCTestCase

@end

@implementation Set1_Tests

- (void) testSet1 {
    NSArray *array = [[NSArray alloc] initWithObjects:@"abc",@"xyz", @"hello",nil];
    NSSet *set1 = [NSSet setWithArray:array];
    NSLog(@"%@", set1);
}

- (void) testSet2 {
    NSSet *set1 = [[NSSet alloc] initWithObjects:@"a", @"b", @"c", nil];
    NSLog(@"%lu", [set1 count]);
    
    if ([set1 containsObject:@"a"]) {
        NSLog(@"has a");
    }
    
    NSArray *a1 = [set1 allObjects];
    NSLog(@"%@", a1);
    
    NSEnumerator *e1 = [set1 objectEnumerator];
    for (NSObject *o1 in e1) {
        NSLog(@"%@", o1);
    }
    
}

- (void) testMutableSet1 {
    NSMutableSet *mset1 = [[NSMutableSet alloc] initWithCapacity:8];
    [mset1 addObject:@"a"];
    
    NSSet *set1 = [[NSSet alloc] initWithObjects:@"a", @"b", @"c", nil];
    [mset1 unionSet:set1];
    
    for (NSObject *o1 in mset1) {
        NSLog(@"%@", o1);
    }
}

@end
