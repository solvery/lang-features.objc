//
//  Basic_1_Test.m
//  lang
//
//  Created by ciminy on 15/9/19.
//  Copyright (c) 2015年 solvery. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface Basic_1_Test : XCTestCase

@end

@implementation Basic_1_Test

- (void) test_basic_1 {
    NSLog (@"hello, objective-c!");
    NSLog(@"\e[1;31mRed text here\e[m normal text here");
}

- (void) test_basic_2 {
    int sum;
    int i;
    
    // bool, yes no
    bool b;
    b = YES;
    b = NO;
    
    // id type
    // 每个目标都可以表达为id类型，可以认为是NSObject*或者是void*
    id v1;
    v1 = nil;
    
    // for
    sum = 0;
    for (i=0; i<100; i=i+1)
        sum = sum + 1;
    
    // while
    sum = 10;
    while (sum !=0)
        sum = sum - 1;
    
    // do while
    sum = 10;
    do {
        sum = sum - 1;
    }while (sum !=0);
    
    // if else-if else
    // switch
    // ? :
}

@end
