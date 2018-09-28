//
//  XBGuideView.h
//  XBGuideView
//
//  Created by 许鑫博 on 2018/9/27.
//  Copyright © 2018年 XXB. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XBGuideView : UIView

/**
 *  直接显示向导页面
 *  自动判断是否是第一次打开
 *
 *  @param defaultImageArrray 引导图片 按数组位置递增图片靠上 通用尺寸,在其他机型为配置图片的情况下,直接使用默认
 *  @param iphone5ImageArrray 引导图片 按数组位置递增图片靠上 iphone5尺寸
 *  @param iphone6ImageArrray 引导图片 按数组位置递增图片靠上 iphone6尺寸
 *  @param iphone6pImageArrray 引导图片 按数组位置递增图片靠上 iphone6p尺寸
 *  @param iphoneXImageArrray 引导图片 按数组位置递增图片靠上 iphoneX尺寸
 *
 *  @return XBGuideView
 */
+(instancetype)showGudieViewWith:(NSArray <NSString *>*)defaultImageArrray
              iphone5ImageArrray:(NSArray <NSString *>*)iphone5ImageArrray
              iphone6ImageArrray:(NSArray <NSString *>*)iphone6ImageArrray
             iphone6pImageArrray:(NSArray <NSString *>*)iphone6pImageArrray
              iphoneXImageArrray:(NSArray <NSString *>*)iphoneXImageArrray;

@end

NS_ASSUME_NONNULL_END
