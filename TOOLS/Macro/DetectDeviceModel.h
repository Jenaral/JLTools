//
//  DetectDeviceModel.h
//  Jenaral
//

#define kIsWidescreen (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double)568 ) < DBL_EPSILON)

#define kIsIphone ([[[UIDevice currentDevice] model] isEqualToString: @"iPhone"])
#define kIsIpod   ([[[UIDevice currentDevice] model] isEqualToString: @"iPod touch"])
#define kIsIpad   ([[[UIDevice currentDevice] model] isEqualToString:@"iPad"])



