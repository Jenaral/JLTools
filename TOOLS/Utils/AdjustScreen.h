//
//  AdjustScreen.h
//  Orthopaedics
//
//  Created by Jenaral on 15/9/11.
//  Copyright (c) 2015年 Jenaral. All rights reserved.
//

#ifndef Orthopaedics_AdjustScreen_h
#define Orthopaedics_AdjustScreen_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#define ORIGIN_WIDTH 320
#define ORIGIN_HEIGHT 568
#define SCREEN_SIZE [UIScreen mainScreen].bounds.size

#define DH_INLINE static inline

//DH_INLINE void func();

// 屏幕竖直方向的比例
DH_INLINE CGFloat WXBVerticalMutiplier()
{
    return SCREEN_SIZE.height/ORIGIN_HEIGHT;
}
/**
 *  屏幕水平方向的比例
 *
 *  @return 屏幕宽:iphone5宽
 */
DH_INLINE CGFloat WXBHorizentalMutiplier()
{
    return SCREEN_SIZE.width/ORIGIN_WIDTH;
}

DH_INLINE CGPoint WXBFlexibleCenter (CGPoint iphone5Center)
{
    CGFloat x = iphone5Center.x * WXBHorizentalMutiplier();
    CGFloat y = iphone5Center.y * WXBVerticalMutiplier();
    return CGPointMake(x, y);
}

DH_INLINE CGSize WXBFlexibleSize(CGSize iphone5Size,BOOL adjustWidth)
{
    CGFloat width = iphone5Size.width * WXBHorizentalMutiplier();
    if (adjustWidth) {
        width = iphone5Size.width * WXBVerticalMutiplier();
    }
    CGFloat height = iphone5Size.height *WXBVerticalMutiplier();
    return CGSizeMake(width, height);

}

DH_INLINE  CGRect WXBFrameWithCenterAndSize(CGPoint center, CGSize size)
{
    CGRect frame;
    frame.origin.x = center.x - size.width/2;
    frame.origin.y = center.y - size.height/2;
    frame.size = size;
    return frame;
}

DH_INLINE CGPoint WXBCenterFromFrame(CGRect frame)
{
    CGPoint center;
    center.x = frame.origin.x + frame.size.width/2;
    center.y = frame.origin.y + frame.size.height/2;
    return center;
}

DH_INLINE CGRect WXBFlexibleFrame(CGRect iphone5Frame, BOOL adjustWidth)
{
    // 拿到iPhone5 frame的center
    CGPoint center = WXBCenterFromFrame(iphone5Frame);
    // 对center进行等比例缩放
    CGPoint flexibleCenter = WXBFlexibleCenter(center);
    // 对size进行等比例缩放
    CGSize flexibleSize = WXBFlexibleSize(iphone5Frame.size, adjustWidth);
    // 通过center和size合成frame
    return WXBFrameWithCenterAndSize(flexibleCenter, flexibleSize);
}



#endif
