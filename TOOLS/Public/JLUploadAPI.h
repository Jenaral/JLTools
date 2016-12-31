////
////  JLUploadAPI.h
////  Tools
////
////  Created by Jenaral on 16/12/20.
////  Copyright © 2016年 Jenaral. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//#import <UIKit/UIKit.h>
//
//typedef void(^JLUploadAPISuccessBlock)(NSURLSessionDataTask *task, id responseObject);
//typedef void(^JLUploadAPIFailureBlock)(NSURLSessionDataTask *task, NSError *error);
//typedef void (^JLUploadAPIProgress)(int64_t bytesWritten,
//                                int64_t totalBytesWritten);
//
//@interface JLUploadAPI : NSObject
//
///**
// *  上传图片(单张)
// *
// *  @param path      URL
// *  @param image     图片
// *  @param params    参数
// *  @param progress  上传进度
// *  @param success   成功回调
// *  @param failure   失败回调
// */
//+ (NSURLSessionTask *)uploadImageWithURL:(NSString *)URLString
//                                   image:(UIImage *)image
//                                  params:(NSDictionary *)params
//                                progress:(JLUploadAPIProgress)progress
//                                 success:(JLUploadAPISuccessBlock)success
//                                 failure:(JLUploadAPIFailureBlock)failure;
//
///**
// *  上传图片(多张)
// *
// *  @param path      URL
// *  @param photos    图片数组
// *  @param params    参数
// *  @param progress  上传进度
// *  @param success   成功回调
// *  @param failure   失败回调
// */
//+ (NSURLSessionTask *)uploadImageWithURL:(NSString *)URLString
//                                  photos:(NSArray *)photos
//                                  params:(NSDictionary *)params
//                                progress:(JLUploadAPIProgress)progress
//                                 success:(JLUploadAPISuccessBlock)success
//                                 failure:(JLUploadAPIFailureBlock)failure;
//
///**
// *  上传文件操作
// *
// *  @param URLString URL
// *  @param filePath  文件路径
// *  @param progress  上传进度
// *  @param success   成功回调
// *  @param failure   失败回调
// */
//+ (NSURLSessionTask *)uploadFileWithURL:(NSString *)URLString
//                               filePath:(NSString *)filePath
//                               progress:(JLUploadAPIProgress)progress
//                                success:(JLUploadAPISuccessBlock)success
//                                failure:(JLUploadAPIFailureBlock)failure;
//
//@end
