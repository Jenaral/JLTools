//
//  NSArray+JSON.m
//  Gaia
//
//  Created by Jenaral on 16/6/6.
//  Copyright © 2016年 Jenaral. All rights reserved.
//

#import "NSArray+JSON.h"

@implementation NSArray (JSON)
-(NSString *)descriptionWithLocale:(id)locale{
    NSMutableString *str = [NSMutableString string];
    
    [str appendString:@"[\n"];
    
    // 遍历数组的所有元素
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([obj isKindOfClass:[NSDictionary class]] || [obj isKindOfClass:[NSArray class]]) {
            [str appendFormat:@"\t%@,\n", obj];
        }else{
            [str appendFormat:@"\t\"%@\",\n", obj];
            
        }
    }];
    
    [str appendString:@"]"];
    
    // 查出最后一个,的范围
    NSRange range = [str rangeOfString:@"," options:NSBackwardsSearch];
    if (range.length != 0) {
        // 删掉最后一个,
        [str deleteCharactersInRange:range];
    }
    
    return str;
    
}
@end


@implementation NSDictionary (JSON)
-(NSString *)descriptionWithLocale:(id)locale{
    NSMutableString *str = [NSMutableString string];
    
    [str appendString:@"{\n"];
    
    // 遍历字典的所有键值对
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if ([obj isKindOfClass:[NSDictionary class]] || [obj isKindOfClass:[NSArray class]]) {
            [str appendFormat:@"\t\"%@\" : %@,\n",key, obj];
        }else {
            [str appendFormat:@"\t\"%@\" : \"%@\",\n",key,obj];
        }
    }];
    
    [str appendString:@"}"];
    
    // 查出最后一个,的范围
    NSRange range = [str rangeOfString:@"," options:NSBackwardsSearch];
    if (range.length != 0) {
        // 删掉最后一个,
        [str deleteCharactersInRange:range];
    }
    
    return str;
}
@end
