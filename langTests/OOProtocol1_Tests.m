//
//  OOProtocol1_Tests.m
//  lang
//
//  Created by ciminy on 15/9/19.
//  Copyright (c) 2015年 solvery. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "OOProtocol1_ClassA.h"

@interface OOProtocol1_Tests : XCTestCase

@end

@implementation OOProtocol1_Tests

- (void) testOOProtocol1 {
    OOProtocol1_ClassA *o1 = [[OOProtocol1_ClassA alloc] init];
    [o1 methodProtocol1];
}
@end
