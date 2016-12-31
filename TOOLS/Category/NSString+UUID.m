//
//  NSString+UUID.m
//  Jenaral
//

#import "NSString+UUID.h"
#import "SystemVersionMacros.h"

@implementation NSString (UUID)
+ (NSString *)uuidString {
    NSString *stringUUID;
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"6.0")) {
        NSUUID  *UUID = [NSUUID UUID];
        stringUUID = [UUID UUIDString];
    } else {
        CFUUIDRef newUniqueId = CFUUIDCreate(kCFAllocatorDefault);
        stringUUID = (__bridge_transfer NSString*)CFUUIDCreateString(kCFAllocatorDefault, newUniqueId);
        CFRelease(newUniqueId);
    }
    return stringUUID;
}
@end
