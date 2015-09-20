
#import "Xcode2012Change1_ClassA.h"

@implementation Xcode2012Change1_ClassA

// not need in new xcode
// @synthesize dict1;

-(void)doSomething:(NSString *)print{
    NSLog(@"%@", [print stringByAppendingFormat:[self getString]]);
}
-(NSString *)getString{
    return @"string for something";
}


@end
