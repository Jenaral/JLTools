//
//  URL.h
//  NIM
//
//  Created by Jenaral on 16/7/6.
//  Copyright © 2016年 Jenaral. All rights reserved.
//

#ifndef URL_h
#define URL_h
//后台服务器
#define KBaseUrl @"http://192.168.7.5:8080/"

//请求成功
#define KStatus_100 ([response[@"status"] integerValue] == 100)
#define KStatus_102 ([response[@"status"] integerValue] == 102)

#define kSuccess_True ([response[@"success"] boolValue] == YES)


#endif /* URL_h */
