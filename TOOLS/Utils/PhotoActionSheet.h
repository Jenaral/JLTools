//
//  MyActionSheet.h
//  艺术蜥蜴
//
//  Created by admin on 15/3/10.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol PhotoActionSheetDelegate <NSObject>
//回传
- (void)myActionSheetDelegate:(UIImage *)img;

@end

@interface PhotoActionSheet : UIView

@property (nonatomic , retain) UIButton *btn;
@property (nonatomic , weak) id<PhotoActionSheetDelegate>delegate;
- (void)actionShow;

@end
