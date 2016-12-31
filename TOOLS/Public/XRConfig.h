//
//  XRConfig.h
//  NIM
//
//  Created by Jenaral on 16/7/11.
//  Copyright © 2016年 Jenaral. All rights reserved.
//

#ifndef XRConfig_h
#define XRConfig_h




#define kUSERDEFAULT [NSUserDefaults standardUserDefaults]
#define YunXinToken [kUSERDEFAULT objectForKey:kYunXinToken]
#define KToken [kUSERDEFAULT objectForKey:KLoginToken] ? [kUSERDEFAULT objectForKey:KLoginToken] : @""
#define NOTIFICATION [NSNotificationCenter defaultCenter]
#define KEmployeeId  [kUSERDEFAULT integerForKey:KLoginUserId]  //获取当前用户
//#define KVideoOrVioceOver @"KVideoOrVioceOver"//语音或者视频通话结束标志通知
#define kPayTypeLast @"kPayTypeLast"//上一次支付方式保留



#define KShowNetError [SVProgressHUD showInfoWithStatus:@"网络异常，请稍后再试"];//网络出错提示语

static NSString *const kLoginMobile = @"mobile.login"; //登录手机号
static NSString *const KLoginMail = @"mail.login";//登录邮箱
static NSString *const KLoginVerifyCode = @"verifyCode.login";//登录验证码
static NSString *const KLoginPWD = @"password.login";//登录密码
static NSString *const kYunXinToken = @"XRyunxintoken"; //云信token
static NSString *const KLoginUserId = @"userId.login"; //用户Id(非云信用户Id)
static NSString *const KLoginToken = @"token.login"; //用户Id token
static NSString *const KLoginOrgIds = @"orgid.login";//组织id

static NSString *const kPrefixEmployee = @"employee";
static NSString *const kPrefixCustomer = @"customer";

static NSString *const ImageStype = @".jpg";//设置图片格式



#endif /* XRConfig_h */
