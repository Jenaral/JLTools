//
//  MyActionSheet.m
//  艺术蜥蜴
//
//  Created by admin on 15/3/10.
//  Copyright (c) 2015年 admin. All rights reserved.
//
//#import "UIImage+Size.h"
#import "PhotoActionSheet.h"
@interface PhotoActionSheet ()<UIActionSheetDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@end

@implementation PhotoActionSheet


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.frame = frame;
    }
    return self;
}

- (void)actionShow{
    UIActionSheet *action = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"拍照",@"选取照片", nil];
    
    
    action.tag = 808;
    [action showInView:self];
}

- (void)removeView{
    [self removeFromSuperview];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 2){
        [_delegate myActionSheetDelegate:nil];
        [self removeFromSuperview];
    }
    else
    {
        [self takePhotoWithIndex:buttonIndex];
    }
    
}



//#pragma mark - 选取照片和拍照
-(void)takePhotoWithIndex:(NSInteger )index
{
    
    // 判断设备是否支持相册
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary])
    {
        NSLog(@"设备不支持访问相册");
        
        return ;
    }
    //判断设备是否支持照相机
    
    UIImagePickerController * mipc = [[UIImagePickerController alloc] init];
    switch (index) {
        case 1:
            mipc.sourceType =  UIImagePickerControllerSourceTypeSavedPhotosAlbum;
            break;
        case 0:
            if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
            {
                NSLog(@"设备不支持访问照相机");
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示！"
                                                                message:@"设备不支持访问照相机"
                                                               delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
                [alert show];
                return;
            }
            mipc.sourceType =  UIImagePickerControllerSourceTypeCamera;
            break;
        case 2:
            break;
        default:
            break;
    }
    mipc.delegate = self;//委托
    mipc.allowsEditing = YES;//是否可编辑照片
    mipc.mediaTypes=[NSArray arrayWithObjects:@"public.image",nil];
    [[self viewController] presentViewController:mipc animated:YES completion:nil];
}
- (UIViewController*)viewController {
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}

#pragma mark - <UIImagePickerControllerDelegate>代理方法
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
//    [_delegate myActionSheetDelegate:info];
    UIImage *img = info[UIImagePickerControllerEditedImage];
    
    NSData *imgData = nil;
    
    if (UIImagePNGRepresentation(img)) { // PNG格式
        imgData = UIImagePNGRepresentation(img);
    } else if (UIImageJPEGRepresentation(img, 1)) { // JPEG格式
        imgData = UIImageJPEGRepresentation(img, 1);
    }
    // 压缩处理
//    imgData = UIImageJPEGRepresentation(img, 1);
    
    // 将图片尺寸变小
//    UIImage *theImg = [self zipImageWithData:imgData limitedWith:410];
//    UIImage *tempImg = [UIImage imageWithData:imgData];
//    UIImage *theImg = [UIImage scaleToSize:tempImg size:CGSizeMake(tempImg.size.width/2, tempImg.size.height/2)];
    UIImage *theImg = [UIImage imageWithData:imgData];
    [_delegate myActionSheetDelegate:theImg];

    [[self viewController] dismissViewControllerAnimated:YES completion:nil];
    [self removeFromSuperview];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [[self viewController] dismissViewControllerAnimated:YES completion:nil];
    [self removeFromSuperview];
}

//对图片进行处理 符合网络要求

- (UIImage *)zipImageWithData:(NSData *)imgData limitedWith:(CGFloat)width {
    // 获取图片
    UIImage *img = [UIImage imageWithData:imgData];
    
    CGSize oldImgSize = img.size; //
    
    if (width > oldImgSize.width) {
        width = oldImgSize.width;
    }
    
//    CGFloat newHeight = oldImgSize.height * ((CGFloat)width / oldImgSize.width);
    CGFloat newHeight = 220;
    
    // 创建新的图片的大小
    CGSize size = CGSizeMake(width, newHeight);
    
    // 开启一个图片句柄
    UIGraphicsBeginImageContext(size);
    
    // 将图片画入新的size里面
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    // 从图片句柄中获取一张新的图片
    UIImage *newImg = UIGraphicsGetImageFromCurrentImageContext();
    
    // 关闭图片句柄
    UIGraphicsEndImageContext();
    
    return newImg;
}
@end
