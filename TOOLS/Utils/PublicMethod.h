////
////  PublicMethod.h
////  NIM
////
////  Created by Jenaral on 16/7/8.
////  Copyright © 2016年 Jenaral. All rights reserved.
////
//
//
//
//
//#import <Foundation/Foundation.h>
//#import <MapKit/MapKit.h>
//@interface PublicMethod : NSObject
//
///**
// *  结束上下拉刷新
// *
// *  @param tableView 刷新的列表视图
// */
//+ (void)endRefresh:(UITableView *)tableView;
///*!
// * @brief 把格式化的JSON格式的字符串转换成字典
// * @param jsonString JSON格式的字符串
// * @return 返回字典
// */
//+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;
///**
// *  字典转换为字符串
// */
//+ (NSString*)dictionaryToJsonStr:(NSDictionary *)dic;
//
///**
// *  根据各种情况判断字符串是否为空 是空返回yes
// */
//+ (BOOL)isEmptyString:(NSString *)str;
///**
// *  图片base64编码字符串
// *
// *  @param image 图片
// *
// *  @return 字符串
// */
//+ (NSString *)imageToString:(UIImage *)image;
///**
// *  根据url地址获取图片
// *
// *  @param string base64
// *
// *  @return 图片
// */
//+(void)stringToPicUrlId:(NSString *)urlId imgView:(UIImageView *)imgView placeholderImg:(UIImage *)img;
//
//
///**
// *  农历转公历
// *
// *  @param oriStr 农历字符串
// *
// *  @return 公历字符串
// */
//+ (NSString *)chineseToSocial:(NSString *)oriStr;
//
///**
// *  公历转农历历
// *
// *  @param oriStr 公历字符串
// *
// *  @return 农历字符串
// */
//+ (NSString *)socialToChinese:(NSString *)oriStr;
//
///**
// *  制作日期
// *
// *  @param str
// *
// *  @return
// */
//+ (NSDateComponents *)dateString:(NSString *)ori;
//
///**
// *  根据日期生成字符串
// *
// *  @param date 日期 yyyy-MM-dd
// *
// *  @return 字符串
// */
//+ (NSString *)stringFromDate:(NSDate *)date;
///**
// *  字符串生成日期
// *
// *  @param ori 字符串
// *
// *  @return 日期
// */
//+ (NSDate *)dateFromString:(NSString *)ori;
//
///**
// *  转换时间为我们需要的格式
// *
// *  @param oriStr 原时间格式
// *
// *  @return 字符串
// */
//
//+ (NSDate *)dateFromStringMore:(NSString *)ori;
//
//+ (NSString *)dataFommat:(NSString *)oriStr;
//
//
//// 将中文字符串转为拼音
//+ (NSString *)chineseStringToPinyin:(NSString *)string;
//
//+ (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size;
///**
// *  确认提示框
// */
//+ (void) okTintArea:(UIViewController *)VC;
//
//
//+ (BOOL) isMobileBumber:(NSString *)mobile;
//+ (BOOL)isPureInt:(NSString *)string;
//+ (BOOL)isPureFloat:(NSString *)string;
///**
// *  转换时间格式为想要格式
// *
// *  @param time 2016-06-06 10：05：55
// *
// *  @return 06/01 10：05
// */
//+ (NSString *)timeFromDate:(NSString *)time;
//
///**
// *  格林尼治转本地时间
// *
// *  @param date <#date description#>
// *
// *  @return <#return value description#>
// */
//+ (NSString *)dateFromDate:(NSDate *)date;
//
///**
// *  检测是否是正确的网址
// *
// *  @param url
// *
// *  @return
// */
//+ (BOOL)isWebURLString:(NSString *)url;
//+ (BOOL)checkURL:(NSString*)url;
//+ (BOOL)isValidURL:(NSString *)string ;
///**
// *  创建拨打电话方法
// *
// *  @param phoneNumber 电话号码
// */
//+ (void)callWithPhoneNumber:(NSString *)phoneNumber;
//
//
///**
// *  创建发送短信方法
// *
// *  @param phoneNumber 电话号码
// */
//+ (void)sendMessageWithPhoneNumber:(NSString *)phoneNumber;
//
//
//
///**
// *  默认功能权限匹配
// *
// *  @param permission 权限名
// *
// *  @return
// */
//+ (BOOL)functionsMatchWithDefaultPermission:(NSString *)permission;
///**
// *  门店功能权限匹配
// *
// *  @param permission 权限名
// *
// *  @return
// */
//+ (BOOL)functionsMatchWithStorePermission:(NSString *)permission;
//
///**
// *  根据是否是门店选择匹配权限方法
// *
// *  @return
// */
//+ (BOOL)functionsMatchWithSelectPermission:(NSString *)permission;
///**
// *  访问范围权限匹配
// *
// *  @param permission  访问权限本地不处理
// *
// *  @return
// */
////+ (BOOL)accessMatchWithNeedPermission:(NSString *)permission;
//
///**
// *  获取本地文件地址
// *
// *  @param fileName <#fileName description#>
// *
// *  @return <#return value description#>
// */
//+ (NSString *)GetSandboxFilePath:(NSString *)fileName ;
//
///**
// *  判断最近会话列表中是否有默认群
// *
// *  @param teamId
// *
// *  @return
// */
//+ (BOOL)isUserDefaultTeam:(NSString *)teamId;
//
//
///**
// *  处理字符串中带\"的字符
// *
// *  @param str
// *
// *  @return
// */
//+ (NSString *)defuseMH:(NSString *)str;
//
///**
// *  更新客户状态
// *
// *  @param str
// *
// *  @return
// */
//+ (void)updateAppState:(BOOL)appStatus withCustomerId:(NSInteger)customerId;
//
///**
// *  更新客户等级
// *
// *  @param str
// *
// *  @return
// */
//+ (void)updateLevel:(NSInteger)level withCustomerId:(NSInteger)customerId;
//
////检测是否有使用相机权限
//+ (BOOL)isCanUseCamera;
//
////插入搜索内容
//+ (void)insertHistoryArray:(NSString *)text;
//
////默认搜索数组
//+ (NSArray*)arrayFromBaseTest;
//
//// 美国地图       范围 latitude：33.5 --- 48.4    longitude：-121.75  ----  -75.34
//+(CLLocationCoordinate2D) getARCCoordinate2d;
//
//@end
