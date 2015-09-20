
#import <XCTest/XCTest.h>

@interface Xcode2012Change1_Tests : XCTestCase

@end

@implementation Xcode2012Change1_Tests

- (void) testEnum1 {
    typedef enum Week{
        Moday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday    
    }Week;
    
}

- (void) testEnum2 {
    // with enum type
    typedef enum Week:NSUInteger{
        Moday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday    
    }Week;
}

- (void) testDataInit1 {
    NSNumber *number;
    number = [NSNumber numberWithChar:'X'];
    number = [NSNumber numberWithInt:12345];
    number = [NSNumber numberWithUnsignedLong:12345ul];
    number = [NSNumber numberWithLongLong:12345ll];
    number = [NSNumber numberWithFloat:123.45f];
    number = [NSNumber numberWithDouble:123.45];
    number = [NSNumber numberWithBool:YES];
    
    NSArray *array;
    array = [NSArray arrayWithObjects:@"object1", @"object2", @"object3", nil];
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjects:@[@"value1", @"value2", @"value3"]
                                                     forKeys:@[@"key1", @"key2", @"key3"]];
}

- (void) testDataInit2 {
    NSNumber *number;
    number = @'X';
    number = @12345;
    number = @12345ul;
    number = @12345ll;
    number = @123.45f;
    number = @123.45;
    number = @YES;
    
    NSArray *array = @[ @"object1", @"object2", @"object3" ];

    NSDictionary *dict = @{@"key1": @"value1",@"key2": @"value2",@"key3": @"value3" };
    NSLog(@"%@", dict);
}

- (void) testOjbectIndex {
    NSMutableArray *array =@[ @"object1", @"object2", @"object3" ];
    
    id obj = array[0]; //通过下标方式获取数组对象，替换原有写法：array objectAtIndex:i];
    NSString *obj1  = @"oooo";
    array[0]  = obj1; //也可以直接为数组对象赋值。替换原有写法：[array replaceObjectAtIndex:i withObject:newObj];
    
    NSMutableDictionary *dict = @{@"key1": @"value1",@"key2": @"value2",@"key3": @"value3" };
    id obj2 = dict[@"key1"];//获取o2对象，替换原有写法：[dic objectForKey:k2];
    dict[@"key2"] = obj;  //重新为键为k2的对象赋值，替换原有写法：[dic setObject:newObj forKey:k2]

}

@end

