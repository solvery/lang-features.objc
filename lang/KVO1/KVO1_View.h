//
//  KVO1_View.h
//  lang
//
//  Created by ciminy on 15/9/20.
//  Copyright (c) 2015年 solvery. All rights reserved.
//

#import <Foundation/Foundation.h>

@class KVO1_ClassA;
@interface KVO1_View : NSObject
{
    KVO1_ClassA *student;
}
-(id)init:(KVO1_ClassA*)initStudent;

@end
