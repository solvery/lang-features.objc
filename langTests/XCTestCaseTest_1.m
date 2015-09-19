//
//  XCTestCaseTest_1.m
//  lang
//
//  Created by ciminy on 15/9/19.
//  Copyright (c) 2015年 solvery. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface XCTestCaseTest_1 : XCTestCase

@end

@implementation XCTestCaseTest_1


// 1.必须无返回值；2.以test开头；
// 测试执行的顺序，方法名string小的优先。
- (void)testTrue2 {
    NSLog(@"%s", __func__);
    XCTAssert(1, @"Can not be zero");
}

- (void)testTrue1 {
    NSLog(@"%s", __func__);
    XCTAssert(1, @"Can not be zero");
}

- (void)testC1 {
    int a1, a2;
    a1 = 1;
    a2 = 1;
    XCTAssertEqual(a1, a2, @"a1 = a2 should be equal.");
    a1 = 2;
    a2 = 3;
    /// XCTAssertEqual(a1, a2, @"a1 = a2 shoud be true");
    
    NSArray *p1 = @[@1];
    NSArray *p2 = @[@1];
    NSArray *p3 = p1;
    /// XCTAssertEqual(p1, p2, @"p1 p2 should be equal.");
    XCTAssertEqual(p1, p3, @"p1 p2 should be equal.");
}

@end
