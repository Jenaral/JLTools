//
//  UIImage+Size.m
//  NIM
//
//  Created by 17m on 16/8/5.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import "UIImage+Size.h"

@implementation UIImage (Size)
/**
 *  修改Image 大小
 */
+ (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size{
    
    UIGraphicsBeginImageContext(size);
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
}


//- (UIImage *)scaleImageToSize:(CGSize)newSize {
//    
//    CGRect scaledImageRect = CGRectZero;
//    
//    CGFloat aspectWidth = newSize.width / self.size.width;
//    CGFloat aspectHeight = newSize.height / self.size.height;
//    CGFloat aspectRatio = MIN ( aspectWidth, aspectHeight );
//    
//    scaledImageRect.size.width = self.size.width * aspectRatio;
//    scaledImageRect.size.height = self.size.height * aspectRatio;
//    scaledImageRect.origin.x = (newSize.width - scaledImageRect.size.width) / 2.0f;
//    scaledImageRect.origin.y = (newSize.height - scaledImageRect.size.height) / 2.0f;
//    
//    UIGraphicsBeginImageContextWithOptions( newSize, NO, 0 );
//    [self drawInRect:scaledImageRect];
//    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    return scaledImage;
//    
//}
@end
