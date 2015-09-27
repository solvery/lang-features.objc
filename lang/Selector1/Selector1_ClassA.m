
#import "Selector1_ClassA.h"

@implementation Selector1_ClassA

- (NSString *) m1:(NSString *)s {
    NSLog(@"in %s, %@", __func__, s);
    return s;
}

@end
