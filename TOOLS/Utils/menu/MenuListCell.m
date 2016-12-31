//
//  MenuListCell.m
//  DropDownDemo
//
//  Created by iMac on 15/12/3.
//  Copyright © 2015年 童明城. All rights reserved.
//

#import "MenuListCell.h"

@implementation MenuListCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self = [[NSBundle mainBundle] loadNibNamed:@"MenuListCell" owner:nil options:nil][0];
    }
    return self;
}

@end
