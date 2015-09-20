//
//  Loop1_Tests.m
//  lang
//
//  Created by ciminy on 15/9/20.
//  Copyright (c) 2015年 solvery. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>

@interface Loop1_Tests : XCTestCase

@end

@implementation Loop1_Tests

- (void) testLoop1 {
    for(int i=0; i<10; i++) {
        NSLog(@"for %d", i);
    }
    
    int loop_index = 0;
    
    while (loop_index < 5) {
        NSLog(@"while %d", loop_index);
        loop_index++;
    }
    
    loop_index = 0;
    do {
        NSLog(@"do while %d", loop_index);
        loop_index++;
    } while (loop_index < 5);
    
}

// break
// continue
- (void) testLoop2 {
    int loop_index = 0;
    do {
        NSLog(@"do while %d", loop_index);
        loop_index++;
        if (loop_index == 3)
            break;
    } while (loop_index < 5);
}

@end
