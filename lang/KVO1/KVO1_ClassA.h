
#import <Foundation/Foundation.h>

@interface KVO1_ClassA : NSObject
{
    NSString *name;
    NSString *courseName;
}
-(void)changeCourseName:(NSString*) newCourseName;

@end
