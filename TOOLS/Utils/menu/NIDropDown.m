//
//  NIDropDown.m
//  NIDropDown
//
//  Created by Bijesh N on 12/28/12.
//  Copyright (c) 2012 Nitor Infotech. All rights reserved.
//

#import "NIDropDown.h"
#import "QuartzCore/QuartzCore.h"
#import "MenuListCell.h"
#import "UIImage+Size.h"

CGFloat animationTime = 0.0f;
@interface NIDropDown ()
@property(nonatomic, strong) UITableView *table;
@property(nonatomic, assign) CGRect btnSender;
@property(nonatomic, strong) UIView *baseView;

@end

@implementation NIDropDown {
    CGFloat kcellHeight;
}
@synthesize table;
@synthesize btnSender;
@synthesize list;

- (void)showDropDown:(CGRect )button height:(CGFloat)height {
        // Initialization code
    kcellHeight = height;
    CGRect btn = CGRectMake(button.origin.x, button.origin.y +20, button.size.width-20, button.size.height);
    btnSender = button;
    _baseView = [[UIView alloc] initWithFrame:CGRectMake(btn.origin.x, btn.origin.y, btn.size.width, 0)];
    self.frame = [UIScreen mainScreen].bounds;
    [self addSubview:_baseView];
    table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, btn.size.width, 0)];
    if ([table respondsToSelector:@selector(setSeparatorInset:)]) {
        [table setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([table respondsToSelector:@selector(setLayoutMargins:)]) {
        [table setLayoutMargins:UIEdgeInsetsZero];
    }
    table.delegate = self;
    table.dataSource = self;
    table.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    table.separatorColor = [UIColor grayColor];
    table.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
    table.scrollEnabled = NO;
    table.tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationTime];
    _baseView.frame = CGRectMake(btn.origin.x, btn.origin.y, btn.size.width, height);//frame
    table.frame = CGRectMake(0, -7, btn.size.width, height);
    [UIView commitAnimations];
    
    [[UIApplication sharedApplication].keyWindow addSubview:self];
    [_baseView addSubview:table];
    UIImage * nomalImage;
    if (_isChangePic) {
         nomalImage = [[UIImage imageNamed:@"xltk_l"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        _isChangePic = NO;
    }else{
       nomalImage  = [[UIImage imageNamed:@"icon_wztk"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
   
    UIImage *newNormalImage = [UIImage scaleToSize:nomalImage size:CGRectMake(btn.origin.x, btn.origin.y, btn.size.width+20, kcellHeight + 29.8).size ];
    UIImageView *boxFrameView = [[UIImageView alloc] initWithFrame:CGRectMake(btn.origin.x-10, btn.origin.y -25, btn.size.width+20, kcellHeight + 29.8)];
    boxFrameView.image = newNormalImage;
    [self insertSubview:boxFrameView atIndex:0];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self hideDropDown:btnSender];
    [self removeFromSuperview];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self hideDropDown:btnSender];
    [self removeFromSuperview];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self hideDropDown:btnSender];
    [self removeFromSuperview];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self hideDropDown:btnSender];
    [self removeFromSuperview];
}
-(void)hideDropDown:(CGRect)button {
    CGRect btn = button;
    [UIView animateWithDuration:0 animations:^{
        _baseView.frame = CGRectMake(btn.origin.x, btn.origin.y+btn.size.height, btn.size.width, 0);
        table.frame = CGRectMake(0, 0, btn.size.width, 0);
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}


#pragma mark -- 培养在willDisplayCell方法中处理数据的习惯
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
    
    if([cell respondsToSelector:@selector(setPreservesSuperviewLayoutMargins:)]){
        [cell setPreservesSuperviewLayoutMargins:NO];
    }
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return kcellHeight/(list.count);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.list count];
}   




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.textLabel.font = [UIFont systemFontOfSize:15];
        cell.textLabel.textColor = [UIColor darkGrayColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text = [list objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.delegate selectedMeunIndex:indexPath.row];
    [self hideDropDown:btnSender];
}

@end
