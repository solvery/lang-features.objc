
#import <XCTest/XCTest.h>

@interface Dict1_Tests : XCTestCase

@end

@implementation Dict1_Tests

- (void) testDict1 {
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"25",@"age",@"张三",@"name",@"男",@"性别",nil];
    NSLog(@"%lu", [dictionary count]);
    NSEnumerator *enumeratorKey = [dictionary keyEnumerator];
    for (NSObject *object in enumeratorKey) {
        NSLog(@"key:%@", object);
    }
    
    NSEnumerator *enumeratorObject = [dictionary objectEnumerator];
    for (NSObject *object in enumeratorObject) {
        NSLog(@"value:%@", object);
    }
    NSLog(@"key name的值是:%@", [dictionary objectForKey:@"name"]);
    

}

- (void) testDict2 {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"25",@"age",@"张三",@"name",@"男",@"性别",nil];
    [dictionary setObject:@"30名" forKey:@"名次"];
    
    NSLog(@"%lu", [dictionary count]);
    NSEnumerator *enumeratorKey = [dictionary keyEnumerator];
    for (NSObject *object in enumeratorKey) {
        NSLog(@"key:%@", object);
    }
    
    NSEnumerator *enumeratorObject = [dictionary objectEnumerator];
    for (NSObject *object in enumeratorObject) {
        NSLog(@"value:%@", object);
    }
    NSLog(@"key 名次的值是:%@", [dictionary objectForKey:@"名次"]);
    [dictionary removeObjectForKey:@"名词"];
    NSLog(@"%lu", [dictionary count]);

}

@end

