
#import "Exception1_ClassA.h"
#import "Exception1_EA.h"
#import "Exception1_EB.h"

@implementation Exception1_ClassA

- (void) m1: (NSInteger) n {
    
    if (n>3) {
        NSException *e = [Exception1_EB exceptionWithName:@"exception b" reason:@">3" userInfo:nil];
        @throw e;
    } else if (n>2) {
        // warning
        NSException *e = [Exception1_EA exceptionWithName:@"exception a" reason:@">2" userInfo:nil];
        @throw e;
    } else if (n<0) {
        NSException *e = [NSException exceptionWithName:@"NSException" reason:@"n < 0" userInfo:nil];
        @throw e;
        
    }
    NSLog(@"in %s, %ld", __func__, n);
}

@end
