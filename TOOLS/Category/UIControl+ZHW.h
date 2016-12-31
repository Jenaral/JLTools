//
//  UIControl+ZHW.h
//  UIButtonMutablieClick
//
//  Created by andson-zhw on 16/8/3.
//  Copyright © 2016年 andson. All rights reserved.
//

#import <UIKit/UIKit.h>


#define defaultInterval 0.5//默认时间间隔

@interface UIControl (ZHW)

@property(nonatomic,assign)NSTimeInterval timeInterval;//用这个给重复点击加间隔

@property(nonatomic,assign)BOOL isIgnoreEvent;//YES不允许点击NO允许点击

@end
