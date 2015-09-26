
#import <XCTest/XCTest.h>


@interface Array1_Tests : XCTestCase

@end

@implementation Array1_Tests

- (void) testArray1 {
    NSObject *obj = [[NSObject alloc]init];
    NSArray *array = [NSArray arrayWithObjects:
                      @"a",
                      obj,
                      @"c",nil];
    NSLog(@"array Count:%lu",[array count]);
    //遍历数组
    for (NSObject *object in array) {
        NSLog(@"数组对象:%@", object);
    }
}
- (void) testArray2 {
    NSObject *obj = [[NSObject alloc]init];
    NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:6];
    [muArray addObject:@"对象1"];
    [muArray addObject:@"对象2"];
    [muArray addObject:@"对象3"];
    [muArray addObject:@"对象4"];
    [muArray insertObject:@"搅局的" atIndex:2];
    [muArray addObject:obj];
    for (NSObject * object in muArray) {
        NSLog(@"数组对象:%@", object);
    }

}

@end

