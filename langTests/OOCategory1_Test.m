//
//  OOCategory1_Test.m
//  lang
//
//  Created by ciminy on 15/9/19.
//  Copyright (c) 2015年 solvery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#import "OOCategory1_ClassA.h"
#import "OOCategory1_ClassA+CategoryAdditions.h"

@interface OOCategory1_Test : XCTestCase

@end

@implementation OOCategory1_Test

- (void) testCategory1 {
    OOCategory1_ClassA *o1 = [[OOCategory1_ClassA alloc] init];
    [o1 method1];
    [o1 additionMethod1];
}
    

@end
