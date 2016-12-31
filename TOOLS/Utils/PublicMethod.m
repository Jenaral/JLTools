////
////  PublicMethod.m
////  NIM
////
////  Created by Jenaral on 16/7/8.
////  Copyright © 2016年 Jenaral. All rights reserved.
////
//
//#import "PublicMethod.h"
//#import "SDWebImageManager.h"
//#import "SDWebImageDownloader.h"
//#import <AVFoundation/AVFoundation.h>
//
//@implementation PublicMethod
//
//+ (void)endRefresh:(UITableView *)tableView {
//    //结束上下拉刷新
//    if ([tableView.mj_header isRefreshing]) {
//        [tableView.mj_header endRefreshing];
//    }
//    
//    if ([tableView.mj_footer isRefreshing]) {
//        [tableView.mj_footer endRefreshing];
//        
//    }
//}
//
///*!
// * @brief 把格式化的JSON格式的字符串转换成字典
// * @param jsonString JSON格式的字符串
// * @return 返回字典
// */
//+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
//    if (jsonString == nil) {
//        return nil;
//    }
//    
//    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
//    NSError *err;
//    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
//                                                        options:NSJSONReadingMutableContainers
//                                                          error:&err];
//    if(err) {
//        NSLog(@"json解析失败：%@",err);
//        return nil;
//    }
//    return dic;
//}
///**
// *  字典转换为字符串
// */
//+ (NSString*)dictionaryToJsonStr:(NSDictionary *)dic {
//    
//    NSError *parseError = nil;
//    
//    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
//    
//    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
//}
///**
// *  根据各种情况判断字符串是否为空 是空返回yes
// */
//+ (BOOL)isEmptyString:(NSString *)str
//{
//    return  str == nil || [str isKindOfClass:[NSNull class]] || ![str isKindOfClass:[NSString class]] || str.length == 0 || [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length == 0 || [str stringByReplacingOccurrencesOfString:@" " withString:@""].length == 0 || [str isEqualToString:@"null"]|| [str isEqualToString:@"(null)"] || [str isEqualToString:@"<null>"];
//}
///**
// *  图片base64编码字符串
// *
// *  @param image 图片
// *
// *  @return 字符串
// */
//+ (NSString *)imageToString:(UIImage *)img
//{
//    
//    __weak typeof(self) wself = self;
//    
//     return @"OK";
//}
//
///**
// *  根据base编码生产图片  ----> 改为 url 下载
// *
// *  @param string base64
// *
// *  @return 图片
// */
//+ (void)stringToPicUrlId:(NSString *)urlId imgView:(UIImageView *)imgView placeholderImg:(UIImage *)img
//{
//
//   
//}
//
//
///**
// *  转换时间为我们需要的格式
// *
// *  @param oriStr 原时间格式
// *
// *  @return 字符串
// */
//+ (NSString *)dataFommat:(NSString *)oriStr{
//    NSString *ss = [oriStr substringToIndex:10];
//    NSDateFormatter *format = [[NSDateFormatter alloc]init];
//    format.dateFormat = @"yyyy-MM-dd";
//    
//    format.timeZone = [NSTimeZone systemTimeZone];
//    NSDate *d = [format dateFromString:ss];
//    
//    
//    return [format stringFromDate:d];
//    
//}
//
//
//+ (NSDate *)dateFromString:(NSString *)ori{
//
//    NSDateFormatter *format = [[NSDateFormatter alloc]init];
//    format.dateFormat = @"yyyy-MM-dd";
//    
//    return [format dateFromString:ori];
//}
//
//+ (NSDate *)dateFromStringMore:(NSString *)ori{
//    
//    NSDateFormatter *format = [[NSDateFormatter alloc]init];
//    format.dateFormat = @"yyyy-MM-dd HH:mm:ss";
//    return [format dateFromString:ori];
//}
///**
// *  农历转公历
// *
// *  @param oriStr 农历字符串
// *
// *  @return 公历字符串
// */
//+ (NSString *)chineseToSocial:(NSString *)oriStr{
////    if (!oriStr) {
////        return nil;
////    }
////    
////    NSDateComponents *comps = [self dateString:oriStr];
////    XRLunar *lunar = [XRLunar new];
////    lunar.lunarYear = [comps year];
////    lunar.lunarMonth = [comps month];
////    lunar.lunarDay = [comps day];
////    XRSolar *socal = [XRLunarSolarConverter lunarToSolar:lunar];
////    return [NSString stringWithFormat:@"%d-%02d-%02d 00:00:00",socal.solarYear,socal.solarMonth,socal.solarDay];
//    return nil;
//    
//}
///**
// *  公历转农历历
// *
// *  @param oriStr 公历字符串
// *
// *  @return 农历字符串
// */
//+ (NSString *)socialToChinese:(NSString *)oriStr{
////    if (!oriStr) {
////        return nil;
////    }
////    
////    NSDateComponents *comps = [self dateString:oriStr];
////    XRSolar *solar = [XRSolar new];
////    solar.solarYear = [comps year];
////    solar.solarMonth = [comps month];
////    solar.solarDay = [comps day];
////    XRLunar *lunar = [XRLunarSolarConverter solarToLunar:solar];
////    return [NSString stringWithFormat:@"%d-%02d-%02d 00:00:00",lunar.lunarYear,lunar.lunarMonth,lunar.lunarDay];
//    return nil;
//    
//    
//}
//// 将中文字符串转为拼音
//+ (NSString *)chineseStringToPinyin:(NSString *)string {
//    
//    if(!string)
//    return nil;
//    // 将中文字符串转成可变字符串
//    NSMutableString *pinyinText = [[NSMutableString alloc] initWithString:string];
//    // 先转换为带声调的拼音
//    CFStringTransform((__bridge CFMutableStringRef)pinyinText, 0, kCFStringTransformMandarinLatin, NO);// 输出 pinyin: zhōng guó sì chuān
//    // 再转换为不带声调的拼音
//    CFStringTransform((__bridge CFMutableStringRef)pinyinText, 0, kCFStringTransformStripDiacritics, NO);// 输出 pinyin: zhong guo si chuan
//    // 转换为首字母大写拼音
//    // NSString *capitalPinyin = [pinyinText capitalizedString];
//    // 输出 capitalPinyin: Zhong Guo Si Chuan
//    // 替换掉空格
//    NSString *newString = [NSString stringWithFormat:@"%@",pinyinText];
//    NSString *newStr = [newString stringByReplacingOccurrencesOfString:@" " withString:@""];
//    return newStr.lowercaseString;
//}
//+ (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size {
//    // 创建一个bitmap的context
//    // 并把它设置成为当前正在使用的context
//    UIGraphicsBeginImageContext(size);
//    // 绘制改变大小的图片
//    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
//    // 从当前context中创建一个改变大小后的图片
//    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
//    // 使当前的context出堆栈
//    UIGraphicsEndImageContext();
//    // 返回新的改变大小后的图片
//    return scaledImage;
//}
///**
// *  制作日期
// *
// *  @param str
// *
// *  @return
// */
//+ (NSDateComponents *)dateString:(NSString *)ori{
//    
//    NSString *str = [ori substringToIndex:10];
//    NSDateFormatter *format = [NSDateFormatter new];
//    format.dateFormat = @"yyyy-MM-dd";
//    NSDate *date = [format dateFromString:str];
//    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];//设置成阳历
//    NSDateComponents *comps = [[NSDateComponents alloc] init];
//    NSInteger unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
//    comps = [calendar components:unitFlags fromDate:date];
//    return comps;
//}
//
//
//+ (NSString *)stringFromDate:(NSDate *)date{
//
//    NSDateFormatter *format = [[NSDateFormatter alloc]init];
//    format.dateFormat = @"yyyy-MM-dd";
//    format.timeZone = [NSTimeZone localTimeZone];
//    return [format stringFromDate:date];
//
//}
//
//
//+ (void)okTintArea:(UIViewController *)VC{
//
//    UIAlertController * action = [UIAlertController  alertControllerWithTitle:@"提示框" message:@"确认修改" preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        
//    }];
//    UIAlertAction *calel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//        
//    }];
//    [action addAction:ok];
//    [action addAction:calel];
//    [VC presentViewController:action animated:YES completion:nil];
//    
//
//}
//
//+ (BOOL) isMobileBumber:(NSString *)mobile{
//    //手机号以13， 15，18开头，八个 \d 数字字符
//    NSString *phoneRegex = @"^((17[0-9])|(13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
//    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
//    if(![phoneTest evaluateWithObject:mobile]){
// 
//        return NO;
//    }
//    return YES;
//}
//
//+ (BOOL)isPureInt:(NSString *)string {
//    NSScanner* scan = [NSScanner scannerWithString:string];
//    int val;
//    return [scan scanInt:&val] && [scan isAtEnd];
//}
//
//+ (BOOL)isPureFloat:(NSString *)string {
//    NSScanner* scan = [NSScanner scannerWithString:string];
//    float val;
//    return [scan scanFloat:&val] && [scan isAtEnd];
//}
///**
// *  时间转换
// *
// *  @param time 获取时间
// *
// *  @return 转换后时间
// */
//
//+ (NSString *)timeFromDate:(NSString *)time{
//    
//    NSDateFormatter *format1 = [NSDateFormatter new];
//    format1.dateFormat = @"yyyy-MM-dd HH:mm:ss";
//    NSDate *date = [format1 dateFromString:time];
//    
//    format1.dateFormat = @"MM/dd HH:mm";
//    
//    
//    return [format1 stringFromDate:date];
//    
//}
//
//
//+ (BOOL)isWebURLString:(NSString *)url{
//
//    NSString *urlG  = @"[a-zA-z]+://[^\\s]*";
//    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",urlG];
//    if(![phoneTest evaluateWithObject:url]){
//        
//        return NO;
//    }
//    return YES;
//}
//
//
//+ (BOOL)checkURL:(NSString*)url
//{
//    NSString *urlRegEx = @"http(s)?://([\\w-]+\\.)+[\\w-]+(/[\\w- ./?%& amp;=]*)?";
//    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",urlRegEx];
//    if(![phoneTest evaluateWithObject:url]){        
//        return NO;
//    }
//    return YES;
//}
//
//
//
//+ (BOOL)isValidURL:(NSString *)string {
//    NSUInteger length = [string length];
//    // Empty strings should return NO
//    if (length >  0) {
//        NSError *error = nil;
//        NSDataDetector *dataDetector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypeLink error:& error];
//        if (dataDetector &&  !error) {
//            NSRange range = NSMakeRange(0, length);
//            NSRange notFoundRange = (NSRange){NSNotFound, 0};
//            NSRange linkRange = [dataDetector rangeOfFirstMatchInString:string options:0 range:range];
//            if (!NSEqualRanges(notFoundRange, linkRange) &&  NSEqualRanges(range, linkRange)) {
//                return YES;
//            }
//        }
//        else {
//            NSLog(@"Could not create link data detector: %@ %@", [error localizedDescription], [error userInfo]);
//        }
//    }
//    return NO;
//}
//
///**
// *  创建拨打电话方法
// *
// *  @param phoneNumber 电话号码
// */
//+ (void)callWithPhoneNumber:(NSString *)phoneNumber {
//    
//#if TARGET_IPHONE_SIMULATOR //模拟器
//    [SVProgressHUD showSuccessWithStatus:@"模拟器不能拨打电话"];
//#elif TARGET_OS_IPHONE //真机
//    if (!phoneNumber) {
//        [SVProgressHUD showInfoWithStatus:@"暂无手机号,不能拨打电话"];
//        return;
//    }
//    if([PublicMethod isMobileBumber:phoneNumber]){
//    [[UIApplication sharedApplication]
//     openURL:[NSURL URLWithString:[NSString stringWithFormat:@"telprompt://%@",
//                                   phoneNumber]]];}
//else{
//
//    [SVProgressHUD showInfoWithStatus:@"暂无手机号,不能拨打电话"];
//
//}
//#endif
//}
//
//+ (void)sendMessageWithPhoneNumber:(NSString *)phoneNumber{
//
//
//#if TARGET_IPHONE_SIMULATOR //模拟器
//        [SVProgressHUD showSuccessWithStatus:@"模拟器不能发送短信"];
//#elif TARGET_OS_IPHONE //真机
//        if([PublicMethod isMobileBumber:phoneNumber]){
//            [[UIApplication sharedApplication]
//             openURL:[NSURL URLWithString:[NSString stringWithFormat:@"sms://%@",
//                                           phoneNumber]]];}
//        else{
//            [SVProgressHUD showInfoWithStatus:@"暂无手机号，不能发送短信"];
//        }
//#endif
//    
//
//
//    
//
//}
//
//
//
//
//
//+ (NSString *)GetSandboxFilePath:(NSString *)fileName {
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *basePath = paths.firstObject;
//    NSString *filePath = [basePath stringByAppendingPathComponent:fileName];
//    return filePath;
//}
//
//+ (NSString *)dateFromDate:(NSDate *)date{
//    
//    NSDateFormatter *format = [NSDateFormatter new];
//    format.dateFormat = @"YYYY-MM-dd HH:mm:ss";
////    format.timeZone = [NSTimeZone localTimeZone];
//    
//    return [format stringFromDate:date];
//
//}
//
///**
// *  判断最近会话列表中是否有默认群
// *
// *  @param teamId
// *
// *  @return
// */
//+ (BOOL)isUserDefaultTeam:(NSString *)teamId{
//    
//    NSArray *array = [NIMSDK sharedSDK].teamManager.allMyTeams.mutableCopy;
//    for (NIMTeam *team in array) {
//        if ([teamId isEqualToString:team.teamId]) {
//            return YES;
//        }
//    }
//    return NO;
//    
//}
//
//+ (NSString *)defuseMH:(NSString *)str{
//    
//    return [str stringByReplacingOccurrencesOfString:@"\"" withString:@""];
//    
//}
//
//+ (void)updateAppState:(BOOL)appStatus withCustomerId:(NSInteger)customerId{
//
//    
//
//}
//
//+ (void)updateLevel:(NSInteger)level withCustomerId:(NSInteger)customerId{
//  
//}
//
////检测是否有使用相机权限
//+ (BOOL)isCanUseCamera{
//
//    //    iOS 判断应用是否有使用相机的权限
//    
//    NSString *mediaType = AVMediaTypeVideo;//读取媒体类型
//    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];//读取设备授权状态
//    if(authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){
//        NSString *errorStr = @"应用相机权限受限,请在设置中启用";
//        [SVProgressHUD showInfoWithStatus:errorStr];
//        return NO;
//    }
//    return YES;
//}
//
//
//
//+ (void)insertHistoryArray:(NSString *)text{
//    if ([text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length==0) {
//        return;
//    }
//    NSMutableArray *array = KNSUserDefaultsGet(KHistoryArray).mutableCopy;
//    if (!array) {
//        array = [NSMutableArray new];
//    }
//    for (NSString *str in array) {
//        if ([str isEqualToString:text]) {
//            [array removeObject:str];
//            break;
//        }
//    }
//    
//    [array insertObject:text atIndex:0];
//    [KNSUserDefaults setObject:array forKey:KHistoryArray];
//    [KNSUserDefaults synchronize];
//    
//}
//
//
//
//+ (NSArray *)arrayFromBaseTest{
//    
//    return @[@"1",@"11",@"12",@"nihao",@"你",@"xiaomi",@"妈妈",@"333",@"44",@"344",@"1010",@"123879",@"5",@"6",@"456789",@"66",@"Jenaral",@"JL",@"JL",@"x",@"xx",@"xxoo"];
//}
////美国地图       范围 latitude：33.5 --- 48.4    longitude：-121.75  ----  -75.34
//+(CLLocationCoordinate2D) getARCCoordinate2d{
//    return  CLLocationCoordinate2DMake(35.5+arc4random()%1000*0.01, -115.75+arc4random()%4000*0.01);
//    
//
//}
//
//@end
