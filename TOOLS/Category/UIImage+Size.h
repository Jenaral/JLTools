//
//  UIImage+Size.h
//  NIM
//
//  Created by 17m on 16/8/5.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Size)
/**
 *  修改Image 大小
 */
+ (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size;


@end
