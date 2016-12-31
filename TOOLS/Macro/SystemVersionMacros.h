//
//  SystemVersionMacros.h
//  Jenaral
//

#ifndef Jenaral_SystemVersionMacros_h
#define Jenaral_SystemVersionMacros_h

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)
#define IS_IOS_9_UP SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"9.0")
#define IS_IOS_8_UP SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0")
#define IS_IOS_7_UP SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")
#define IS_IOS_7_1_UP SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.1")
#define IS_IOS_6_UP SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"6.0")
#define IS_IOS_5_UP SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"5.0")
#define IS_IOS_4_UP SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"4.0")
#endif
