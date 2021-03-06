//
//  UIColor+Hex.m
//  Gaia
//
//  Created by Jenaral on 16/3/8.
//  Copyright © 2016年 Jenaral. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

/**
 *  由16进制字符串获取颜色
 *
 *  @param hexRGBString
 *
 *  @return
 */
+ (UIColor *)colorWithHexRGB:(NSString *)hexRGBString
{
    if (![hexRGBString isKindOfClass:[NSString class]]) {
        return [UIColor clearColor];
    }
    if (hexRGBString.length < 6) {
        return [UIColor clearColor];
    }
    if ([hexRGBString hasPrefix:@"#"]) {
        
        hexRGBString = [hexRGBString substringFromIndex:1];
    }
    if ([hexRGBString hasPrefix:@"0X"]) {
        hexRGBString = [hexRGBString substringFromIndex:2];
    }
    if (hexRGBString.length != 6) {
        return [UIColor clearColor];
    }
    unsigned int colorCode = 0;
    unsigned char redByte, greenByte, blueByte;
    
    if (hexRGBString) {
        NSScanner *scanner = [NSScanner scannerWithString:hexRGBString];
        [scanner scanHexInt:&colorCode];
    }
    redByte = (unsigned char) (colorCode >> 16);
    greenByte = (unsigned char) (colorCode >> 8);
    blueByte = (unsigned char) (colorCode); // masks off high bits
    
    return [UIColor colorWithRed:(float)redByte/0xff green:(float)greenByte/0xff blue:(float)blueByte/0xff alpha:1.0];
}

@end
