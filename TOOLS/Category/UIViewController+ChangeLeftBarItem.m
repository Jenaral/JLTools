//
//  UIViewController+ChangeLeftBarItem.m
//  NIM
// 改变导航栏左边barItem
//
//  Created by Jenaral on 16/8/5.
//  Copyright © 2016年 Jenaral. All rights reserved.
//

#import "UIViewController+ChangeLeftBarItem.h"

@implementation UIViewController (ChangeLeftBarItem)
/**
 *  改变导航栏左边barItem
 *
 *  @param index 0:白色箭头，蓝色背景，白色标题文字  1：蓝色箭头，白色背景 c333333文字标题颜色
 */
- (void)changeLeftItem:(NSInteger)index{
    
    
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    negativeSpacer.width = -8;
    
    UIImage *icon;//返回图标
    UIColor *bgColor;//tint背景
    if(index){
        icon = [UIImage imageNamed:@"icon_back_p"];
        bgColor = [UIColor whiteColor];
    
    }else{
        icon = [UIImage imageNamed:@"icon_back_w"];
    }
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(0, 0, 85 , 50);
    UIImage *im = [icon imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    UIImageView *ims = [[UIImageView alloc] initWithFrame:CGRectMake(9, 13, im.size.width, im.size.height)];
    ims.image = im;
//    [button addSubview:ims];
    [button.layer addSublayer:ims.layer];
    [button addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem * leftButton = [[UIBarButtonItem alloc]initWithCustomView:button];

    self.navigationItem.leftBarButtonItems = @[negativeSpacer, leftButton];
    if (bgColor) {
        self.navigationController.navigationBar.barTintColor = bgColor;
    }
        self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    
}

- (void)goBack {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    
  
}


@end
