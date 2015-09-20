//
//  OOAttr1ClassA.h
//  lang
//
//  Created by ciminy on 15/9/20.
//  Copyright (c) 2015年 solvery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OOAttr1ClassA : NSObject

{
    int v1;
    int v2;
    int attr1;
    int attr2;
}

@property (atomic) int attr1;

- (int) attr2;
- (void) setAttr2:(int)newAttr2;

@end
