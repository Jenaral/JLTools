//
//  NIDropDown.h
//  NIDropDown
//
//  Created by Bijesh N on 12/28/12.
//  Copyright (c) 2012 Nitor Infotech. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NIDropDown;
@protocol NIDropDownDelegate
- (void)selectedMeunIndex:(NSInteger)index;
@end 

@interface NIDropDown : UIView <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) id <NIDropDownDelegate> delegate;
@property(nonatomic, strong) NSArray *list;
@property(nonatomic, strong) NSArray *imageList;
- (void)hideDropDown:(CGRect)button;
- (void)showDropDown:(CGRect )button height:(CGFloat)height;

@property (nonatomic) BOOL isChangePic;
@end
