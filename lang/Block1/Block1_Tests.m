
#import <XCTest/XCTest.h>

@interface Block1_Tests : XCTestCase

@end

@implementation Block1_Tests

- (void) testBlock1 {
    // string args
    void (^printBlock)(NSString *x);
    printBlock = ^(NSString* str)
    {
        NSLog(@"print:%@", str);
    };
    printBlock(@"hello world!");
}
    
- (void) testBlock2 {
    // sort
    NSArray *stringArray = [NSArray arrayWithObjects:@"abc 1", @"abc 21", @"abc 12",@"abc 13",@"abc 05",nil];
    NSComparator sortBlock = ^(id string1, id string2)
    {
        return [string1 compare:string2];
    };
    NSArray *sortArray = [stringArray sortedArrayUsingComparator:sortBlock];
    NSLog(@"sortArray:%@", sortArray);

}
    
- (void) testBlock3 {
    // recurse
    static void (^ const blocks)(int) = ^(int i)
    {
        if (i > 0) {
            NSLog(@"num:%d", i);
            blocks(i - 1);
        }
    };
    blocks(3);
    
}

int global = 1000;
- (void) testBlock4 {
    // global/locla variable
    void(^block)(void) = ^(void)
    {
        global++;
        NSLog(@"global:%d", global);
    };
    block();
    NSLog(@"global:%d", global);
}

- (void) testBlock5 {
    int local = 500;
    void(^block)(void) = ^(void)
    {
        //            local++;
        NSLog(@"local:%d", local);
    };
    block();
    NSLog(@"local:%d", local);
}

- (void) testBlock6 {
    __block int local = 500;
    void(^block)(void) = ^(void)
    {
        local++;
        NSLog(@"local:%d", local);
    };
    block();
    NSLog(@"local:%d", local);
}


@end
