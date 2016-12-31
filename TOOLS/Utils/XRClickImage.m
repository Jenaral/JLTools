////
////  XRClickImage.m
////  NIM
////
////  Created by Jenaral on 16/8/8.
////  Copyright © 2016年 Jenaral. All rights reserved.
////
//
//#import "XRClickImage.h"
//
//
//CGRect goBackRect;
//float goBackDuration;
//UIScrollView* goBackgroundView;
//UIImageView* goBackImageView;
//UIImageView* goBackFakeImageView;
//UIViewController* goBackViewController;
//
//@interface XRClickImage ()
///**
// *  保存可见的视图
// */
//@property (nonatomic, strong) NSMutableSet *visibleImageViews;
//
///**
// *  保存可重用的
// */
//@property (nonatomic, strong) NSMutableSet *reusedImageViews;
//
///**
// *  滚动视图
// */
//@property (nonatomic, weak) UIScrollView *scrollView;
//
///**
// *  所有的图片名
// */
//@property (nonatomic, strong) NSArray *imageNames;
//
//
//@property (nonatomic, strong) UIImageView *imageView;
//
//@property (nonatomic, strong) UILabel *showIndexLabel;
//
//@end
//
//@implementation XRClickImage
//
//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//    }
//    return self;
//}
//
//#pragma mark Init Views
//
//
//
//#pragma mark - UIScrollViewDelegate
//
//- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    
//    [self showImages];
//
//}
//
//
//
//
//
//#pragma mark - Private Method
//
//- (void)showImages {
//    
//    // 获取当前处于显示范围内的图片的索引
//    CGRect visibleBounds = self.scrollView.bounds;
//    CGFloat minX = CGRectGetMinX(visibleBounds);
//    CGFloat maxX = CGRectGetMaxX(visibleBounds);
//    CGFloat width = CGRectGetWidth(visibleBounds);
//    
//    NSInteger firstIndex = (NSInteger)floorf(minX / width);
//    NSInteger lastIndex  = (NSInteger)floorf(maxX / width);
//    
//    // 处理越界的情况
//    if (firstIndex < 0) {
//        firstIndex = 0;
//    }
//    
//    if (lastIndex >= [self.imageNames count]) {
//        lastIndex = [self.imageNames count] - 1;
//    }
//    
//    // 回收不再显示的ImageView
//    NSInteger imageViewIndex = 0;
//    for (UIImageView *imageView in self.visibleImageViews) {
//        imageViewIndex = imageView.tag;
//        // 不在显示范围内
//        if (imageViewIndex < firstIndex || imageViewIndex > lastIndex) {
//            [self.reusedImageViews addObject:imageView];
//            [imageView removeFromSuperview];
//        }
//    }
//    
//    [self.visibleImageViews minusSet:self.reusedImageViews];
//    
//    // 是否需要显示新的视图
//    for (NSInteger index = firstIndex; index <= lastIndex; index++) {
//        BOOL isShow = NO;
//        
//        for (UIImageView *imageView in self.visibleImageViews) {
//            if (imageView.tag == index) {
//                isShow = YES;
//            }
//        }
//        
//        if (!isShow) {
//            [self showImageViewAtIndex:index];
//        }
//    }
//}
//
//// 显示一个图片view
//- (void)showImageViewAtIndex:(NSInteger)index {
//    
//    
//    self.imageView = [self.reusedImageViews anyObject];
//    
//    if (self.imageView) {
//        [self.reusedImageViews removeObject:self.imageView];
//    } else {
//        self.imageView = [[UIImageView alloc] init];
////        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
//    }
//    
//    CGRect bounds = self.scrollView.bounds;
//    CGRect imageViewFrame = bounds;
//    imageViewFrame.origin.x = CGRectGetWidth(bounds) * index;
//    imageViewFrame.size.height = kWIDTH_SCREEN;
//    imageViewFrame.origin.y = (kHEIGHT_SCREEN -kWIDTH_SCREEN)*0.5;
//    self.imageView.tag = index + 336;
//    self.imageView.frame = imageViewFrame;
////    self.imageView.image = [PublicMethod stringToUIImage:self.imageNames[index]];
//     [PublicMethod stringToPicUrlId:self.imageNames[index] imgView:self.imageView placeholderImg:nil];
//    self.showIndexLabel.text = [NSString stringWithFormat:@"%ld/%lu",(NSInteger)((NSInteger)self.scrollView.contentOffset.x / kWIDTH_SCREEN) + 1, (unsigned long)self.picsNames.count];
//       [[UIApplication sharedApplication].keyWindow addSubview:self.showIndexLabel];
//    
//    [self.visibleImageViews addObject:self.imageView];
//    [self.scrollView addSubview:self.imageView];
//
//}
//
//#pragma mark - Getters and Setters
//
//- (NSArray *)imageNames {
//    if (_imageNames == nil) {
//        NSMutableArray *imageNames = [NSMutableArray arrayWithCapacity:50];
//        imageNames = self.picsNames;
//        _imageNames = imageNames;
//    }
//    return _imageNames;
//}
//
//- (NSMutableSet *)visibleImageViews {
//    if (_visibleImageViews == nil) {
//        _visibleImageViews = [[NSMutableSet alloc] init];
//    }
//    return _visibleImageViews;
//}
//
//- (NSMutableSet *)reusedImageViews {
//    if (_reusedImageViews == nil) {
//        _reusedImageViews = [[NSMutableSet alloc] init];
//    }
//    return _reusedImageViews;
//}
//
//
///**+
// *  点击手势
// *
// */
//- (void)canClickIt:(BOOL)click {
//    if (click==YES) {
//        UITapGestureRecognizer *touch = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapIt:)];
//        [touch setNumberOfTapsRequired:1];
//        self.userInteractionEnabled = YES;
//        _duration = 0;
//        [self addGestureRecognizer:touch];
//    }
//}
//
///**
// *  点击
// *
// */
//- (void)tapIt:(UIGestureRecognizer*)sender {
//    [self showImage:(UIImageView*)sender.view];
//}
//
///**
// *  放大至全屏图片
// *
// */
//- (void)showImage:(UIImageView *)defaultImageView{
//    goBackDuration = _duration;
//    UIImage *image = defaultImageView.image;
//    window = [UIApplication sharedApplication].keyWindow;
//    
//    goBackgroundView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
//    goBackgroundView.pagingEnabled = YES;
//    goBackgroundView.delegate = self;
//    goBackgroundView.showsHorizontalScrollIndicator = NO;
//    goBackgroundView.showsVerticalScrollIndicator = NO;
//    goBackgroundView.contentSize = CGSizeMake(self.imageNames.count * CGRectGetWidth(goBackgroundView.frame), 0);
//    _scrollView = goBackgroundView;
// 
//    self.scrollView.contentOffset = CGPointMake(self.picIndex * CGRectGetWidth(goBackgroundView.frame), 0);
//    [self showImageViewAtIndex:self.picIndex];
//    
//    defaultRect = [defaultImageView convertRect:defaultImageView.bounds toView:window];//关键代码，坐标系转换
//    goBackgroundView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0];
//    CGRect linshi = defaultRect;
//    linshi.size.height = kWIDTH_SCREEN;
//    linshi.size.width = kWIDTH_SCREEN;
//    linshi.origin.y = (kHEIGHT_SCREEN -kWIDTH_SCREEN)*0.5;
//    linshi.origin.x = 0;
//    UIImageView *fakeImageView = [[UIImageView alloc]initWithFrame:linshi];
//    
//    [goBackgroundView addSubview:fakeImageView];
//    [window addSubview:goBackgroundView];
//    
//    self.showIndexLabel.text = [NSString stringWithFormat:@"%ld/%lu",(NSInteger)((NSInteger)self.scrollView.contentOffset.x / kWIDTH_SCREEN) + 1, (unsigned long)self.picsNames.count];
//    [[UIApplication sharedApplication].keyWindow addSubview:self.showIndexLabel];
//    
//    if (clickViewController!=nil) {
//        //截图
//        if (!snapView) {
//            snapView = clickViewController.view;
//        }
//        if(UIGraphicsBeginImageContextWithOptions != NULL)
//        {
//            UIGraphicsBeginImageContextWithOptions(snapView.frame.size, NO, 0.0);
//        } else {
//            UIGraphicsBeginImageContext(snapView.frame.size);
//        }
//        [snapView.layer renderInContext:UIGraphicsGetCurrentContext()];
//        fakeImage = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();
//        
//        fakeImageView.image = fakeImage;
//        [UIView animateWithDuration:_duration animations:^{
//            self.imageView.alpha = 0;
//            self.imageView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
//            fakeImageView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
//        } completion:^(BOOL finished) {
//            [UIView animateWithDuration:(_duration/2) animations:^{
//                goBackImageView = self.imageView;
//                goBackFakeImageView = fakeImageView;
//                goBackRect = linshi;
//                
//            } completion:^(BOOL finished) {
//                goBackgroundView.alpha = 0;
//                for (UIView* next = [self superview]; next; next = next.superview) {
//                    UIResponder *nextResponder = [next nextResponder];
//                    if ([nextResponder isKindOfClass:[UIViewController class]]) {
//                        [((UIViewController*)nextResponder) presentViewController:clickViewController animated:NO completion:^{
//                            ;
//                        }];//可更改为UINavigation推入
//                    }
//                }
//                goBackViewController = clickViewController;
//            }];
//        }];
//    } else {
//        UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hideImage:)];
//        [goBackgroundView addGestureRecognizer:tap];
//        defaultImageView.alpha = 0;
//        [UIView animateWithDuration:_duration animations:^{
//            self.imageView.frame=linshi;
////            linshi.origin= 0;
////            self.imageView.frame = linshi;
//            goBackgroundView.backgroundColor=[UIColor colorWithWhite:0.200 alpha:0.981];
//            
//        } completion:^(BOOL finished) {
//        }];
//    }
//}
//
//
///**
// *  隐藏全屏图片
// */
//+ (void)dismissClickView {
//    UIView *snapView = goBackViewController.view;
//    if(UIGraphicsBeginImageContextWithOptions != NULL)
//    {
//        UIGraphicsBeginImageContextWithOptions(snapView.frame.size, NO, 0.0);
//    } else {
//        UIGraphicsBeginImageContext(snapView.frame.size);
//    }
//    
//    [snapView.layer renderInContext:UIGraphicsGetCurrentContext()];
//    goBackFakeImageView.image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    goBackgroundView.alpha = 1;
//    [goBackViewController dismissViewControllerAnimated:NO completion:^{
//        ;
//    }];
//    
//    [UIView animateWithDuration:0 animations:^{
//        goBackImageView.alpha = 1;
//        goBackImageView.frame = goBackRect;
//        goBackFakeImageView.frame = goBackRect;
//    } completion:^(BOOL finished) {
//        goBackViewController = nil;
//        [goBackgroundView removeFromSuperview];
//        
//    }];
//}
//
//
///**
// *  //缩小回原来的图片
// *
// */
//- (void)hideImage:(UITapGestureRecognizer*)tap{
//    [self.showIndexLabel removeFromSuperview];
//    UIImageView *imageView = (UIImageView*)[tap.view viewWithTag:336];
//    
//    [UIView animateWithDuration:0 animations:^{
//        imageView.frame = defaultRect;
//        goBackgroundView.backgroundColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:0];
//    } completion:^(BOOL finished) {
//        self.alpha = 1;
//        [goBackgroundView removeFromSuperview];
//    }];
//}
//
//#pragma mark - Getter
//- (UILabel *)showIndexLabel{
//    if (!_showIndexLabel) {
//        _showIndexLabel = [[UILabel alloc] init];
//        self.showIndexLabel.backgroundColor = [UIColor clearColor];
//        self.showIndexLabel.textColor = [UIColor colorWithRed:0.251 green:0.502 blue:0.000 alpha:1.000];
//        self.showIndexLabel.font = [UIFont systemFontOfSize:17];
//        self.showIndexLabel.frame = CGRectMake(kWIDTH_SCREEN/2 - 25, kHEIGHT_SCREEN -50, 50, 40);
//        self.showIndexLabel.textAlignment = NSTextAlignmentCenter;
//    }
//    return _showIndexLabel;
//}
//
//@end
