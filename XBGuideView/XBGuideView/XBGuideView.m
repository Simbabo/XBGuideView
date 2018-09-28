//
//  XBGuideView.m
//  XBGuideView
//
//  Created by 许鑫博 on 2018/9/27.
//  Copyright © 2018年 XXB. All rights reserved.
//

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
#define IPHONE5 (([UIScreen mainScreen].bounds.size.width == 320) ? 1 : 0)
#define IPHONE6 (([UIScreen mainScreen].bounds.size.width == 375) ? 1 : 0)
#define IPHONE6plus (([UIScreen mainScreen].bounds.size.width == 414) ? 1 : 0)
#define IPHONEX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

#define SureShouldShowGuide @"SureShouldShowGuide"

#import "XBGuideView.h"
@interface XBGuideView()
@property (nonatomic, strong) NSArray<NSString *> *imageArray;
@end
@implementation XBGuideView

+(instancetype)showGudieViewWith:(NSArray <NSString *>*)defaultImageArrray
              iphone5ImageArrray:(NSArray <NSString *>*)iphone5ImageArrray
              iphone6ImageArrray:(NSArray <NSString *>*)iphone6ImageArrray
             iphone6pImageArrray:(NSArray <NSString *>*)iphone6pImageArrray
              iphoneXImageArrray:(NSArray <NSString *>*)iphoneXImageArrray{
    if (![XBGuideView shouldShowGuider]) return nil;
    XBGuideView *view = [[XBGuideView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    if (IPHONE5) {
        view.imageArray = iphone5ImageArrray?:defaultImageArrray;
    }else if (IPHONE6){
        view.imageArray = iphone5ImageArrray?:defaultImageArrray;
    }else if (IPHONE6plus){
        view.imageArray = iphone5ImageArrray?:defaultImageArrray;
    }else{
        view.imageArray = iphoneXImageArrray?:defaultImageArrray;
    }
    [view setUI];
    [view showView];
    return view;
}

-(void)setUI{
    for (int i = 0; i < _imageArray.count; i++) {
        UIImage *image = [UIImage imageNamed:_imageArray[i]];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight);
        imageView.tag = i;
        imageView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageViewClick:)];
        [imageView addGestureRecognizer:tap];
        [self addSubview:imageView];
    }
}

-(void)imageViewClick:(UITapGestureRecognizer *)tap{
    UIImageView *imageView = (UIImageView *)tap.view;
    [imageView removeFromSuperview];
    if (imageView.tag  == 0) {
        [self hideView];
    }
}

-(void)showView{
    [[UIApplication sharedApplication].delegate.window addSubview:self];
}

-(void)hideView{
    [self removeFromSuperview];
}

#pragma mark - 是否显示引导页面
+ (BOOL)shouldShowGuider {
    NSNumber *number = [[NSUserDefaults standardUserDefaults] objectForKey:SureShouldShowGuide];
    if ([number isEqual:@200]) {
        return YES;
    } else {
        [[NSUserDefaults standardUserDefaults]setObject:@200 forKey:SureShouldShowGuide];
        [[NSUserDefaults standardUserDefaults]synchronize];
        return YES;
    }
}

@end
