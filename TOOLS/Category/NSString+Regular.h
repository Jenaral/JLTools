//
//  NSString+Regular.h
//  Gaia
//
//  Created by Jenaral on 16/3/8.
//  Copyright © 2016年 Jenaral. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Regular)

//邮箱
+ (BOOL) validateEmail:(NSString *)email;
//手机号码验证
+ (BOOL) validateMobile:(NSString *)mobile;
//车牌号验证
+ (BOOL) validateCarNo:(NSString *)carNo;
//车型
+ (BOOL) validateCarType:(NSString *)CarType;
//用户名
+ (BOOL) validateUserName:(NSString *)name;
//密码
+ (BOOL) validatePassword:(NSString *)passWord;
//昵称
+ (BOOL) validateNickname:(NSString *)nickname;
//身份证号
+ (BOOL) validateIdentityCard: (NSString *)identityCard;
//手机验证码
+ (BOOL) validateCheckCode: (NSString *)checkCode;
//验证数字
+ (BOOL) validateNumber:(NSString *)numberStr;

@end
