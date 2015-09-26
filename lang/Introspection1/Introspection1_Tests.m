
#import <XCTest/XCTest.h>

#import "Introspection1_ClassA.h"
#import "Introspection1_ClassB.h"

@interface Introspection1_Tests : XCTestCase

@end

@implementation Introspection1_Tests

- (void) testIntrospection1 {
    Introspection1_ClassA *oa1 = [[Introspection1_ClassA alloc] init];
    Introspection1_ClassB *ob1 = [[Introspection1_ClassB alloc] init];
    
    // 不管是否跟父类有关系
    NSLog(@"isMemberOfClass");
    if ([oa1 isMemberOfClass:[Introspection1_ClassA class]]) {
        NSLog(@"yes 1");
    }
    if ([oa1 isMemberOfClass:[Introspection1_ClassB class]]) {
        NSLog(@"yes 2");
    }
    if ([ob1 isMemberOfClass:[Introspection1_ClassA class]]) {
        NSLog(@"yes 3");
    }
    if ([ob1 isMemberOfClass:[Introspection1_ClassB class]]) {
        NSLog(@"yes 4");
    }
    
    NSLog(@"isKindOfClass");
    if ([oa1 isKindOfClass:[Introspection1_ClassA class]]) {
        NSLog(@"yes 1");
    }
    if ([oa1 isKindOfClass:[Introspection1_ClassB class]]) {
        NSLog(@"yes 2");
    }
    if ([ob1 isKindOfClass:[Introspection1_ClassA class]]) {
        NSLog(@"yes 3");
    }
    if ([ob1 isKindOfClass:[Introspection1_ClassB class]]) {
        NSLog(@"yes 4");
    }
    
    NSLog(@"respondsToSelector");
    if ([oa1 respondsToSelector:@selector(ma1)] == YES) {
        NSLog(@"yes 1");
    }
    if ([oa1 respondsToSelector:@selector(mb1)] == YES) {
        NSLog(@"yes 2");
    }
    if ([ob1 respondsToSelector:@selector(ma1)] == YES) {
        NSLog(@"yes 3");
    }
    if ([ob1 respondsToSelector:@selector(mb1)] == YES) {
        NSLog(@"yes 4");
    }
    
    NSLog(@"instancesRespondToSelector");
    if ([Introspection1_ClassA instancesRespondToSelector:@selector(ma1)] == YES) {
        NSLog(@"yes 1");
    }
    if ([Introspection1_ClassA instancesRespondToSelector:@selector(mb1)] == YES) {
        NSLog(@"yes 2");
    }
    if ([Introspection1_ClassB instancesRespondToSelector:@selector(ma1)] == YES) {
        NSLog(@"yes 3");
    }
    if ([Introspection1_ClassB instancesRespondToSelector:@selector(mb1)] == YES) {
        NSLog(@"yes 4");
    }
}

- (void) testIntrospection2 {
    Introspection1_ClassA *oa1 = [[Introspection1_ClassA alloc] init];
    Introspection1_ClassB *ob1 = [[Introspection1_ClassB alloc] init];
    
    id ida = oa1;
    id idb = ob1;
    
    [ida ma1];
    [idb ma1];
    [idb mb1];
}

@end

