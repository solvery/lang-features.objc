//
//  KVO1_View.m
//  lang
//
//  Created by ciminy on 15/9/20.
//  Copyright (c) 2015年 solvery. All rights reserved.
//

#import "KVO1_View.h"
#import "KVO1_ClassA.h"

@implementation KVO1_View
-(id)init:(KVO1_ClassA*)initStudent
{
    if (self = [super init]) {
        student = initStudent;
        [student addObserver:self
                  forKeyPath:@"courseName"
                     options:NSKeyValueObservingOptionOld
         |NSKeyValueObservingOptionNew context:nil];
    }
    return self;
}

- (void) dealloc{
    [student removeObserver:self forKeyPath:@"courseName" context:nil];
    /// [super dealloc];
}

-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary *)change
                      context:(void *)context
{
    if ([keyPath isEqual:@"courseName"]) {
        NSLog(@"PageView课程被改变了");
        NSLog(@"PageView新课程是:%@ 老课程是:%@", [change objectForKey:@"new"],[change objectForKey:@"old"]);
    }
}
@end
