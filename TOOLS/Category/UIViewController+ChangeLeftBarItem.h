//
//  UIViewController+ChangeLeftBarItem.h
//  NIM
//
//  Created by Jenaral on 16/8/5.
//  Copyright © 2016年 Jenaral. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (ChangeLeftBarItem)
/**
 *  改变导航栏左边barItem
 *
 *  @param index 图标种类
 */
- (void)changeLeftItem:(NSInteger)index;

- (void)goBack;

@end
