
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

- (void) testArray3 {
    NSString *str1 = [[NSString alloc] init];
    NSString *str2 = [[NSString alloc] init];
    NSString *str3 = [str1 stringByAppendingFormat:@"字符串"];
    NSString *str4 = [str2 stringByAppendingFormat:@"字符串"];
    
    NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:6];
    [muArray addObject:@"对象"];
    [muArray addObject:str3];
    [muArray addObject:str4];
    for (NSObject * object in muArray) {
        NSLog(@"数组对象:%@", object);
    }
    
    if ([str3 isEqual:str4]) {
        NSLog(@"str1 isEqual str2");
    }
    if (str3  == str4) {
        NSLog(@"str1 == str2");
    }
    [muArray removeObject:str3];
    for (NSObject * object in muArray) {
        NSLog(@"数组对象:%@", object);
    }

}

- (void) testArray4 {
    NSObject *obj = [[NSObject alloc]init];
    
    NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:6];
    [muArray addObject:@"对象1"];
    [muArray addObject:@"对象2"];
    [muArray addObject:@"对象3"];
    [muArray addObject:@"对象4"];
    [muArray addObject:obj];
    
    for (NSObject * object in muArray) {
        NSLog(@"数组对象:%@", object);
    }
    [muArray replaceObjectAtIndex:4 withObject:@"字符串替换回来"];
    for (NSObject * object in muArray) {
        NSLog(@"数组对象:%@", object);
    }

}

- (void) testArray5 {
    NSObject *obj = [[NSObject alloc]init];
    
    NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:6];
    [muArray addObject:@"对象1"];
    [muArray addObject:@"对象2"];
    [muArray addObject:@"对象3"];
    [muArray addObject:@"对象4"];
    [muArray addObject:obj];
    
    NSEnumerator *enmuerator = [muArray objectEnumerator];
    id object;
    while (object = [enmuerator nextObject]) {
        NSLog(@"数组中的对象：%@", object);
    }
}

@end

