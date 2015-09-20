
#import <XCTest/XCTest.h>
#import "KVO1_ClassA.h"
#import "KVO1_View.h"

@interface KVO1_Tests : XCTestCase

@end

@implementation KVO1_Tests

- (void) testKVO1 {
    KVO1_ClassA *student = [[KVO1_ClassA alloc]init];
    [student changeCourseName:@"数学课"];
    NSLog(@"初始值:%@", [student valueForKey:@"courseName"]);
    
    //创建页面实例
    KVO1_View *pageview = [[KVO1_View alloc]init:student];
    
    [student setValue:@"化学课" forKey:@"courseName"];

}

// 只有通过键值编码(KVC)改变的值，才会回调观察者注册的方法。
- (void) testKVO2 {
    KVO1_ClassA *student = [[KVO1_ClassA alloc]init];
    [student changeCourseName:@"数学课"];
    NSLog(@"初始值:%@", [student valueForKey:@"courseName"]);
    
    //创建页面实例
    KVO1_View *pageview = [[KVO1_View alloc]init:student];
    
    [student setValue:@"化学课" forKey:@"courseName"];
    [student changeCourseName:@"英语课"];
    NSLog(@"直接改变的课程为:%@", [student valueForKey:@"courseName"]);

}
- (void) testKVO3 {
}

@end

