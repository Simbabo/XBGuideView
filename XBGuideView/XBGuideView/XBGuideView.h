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
 *  @param imageArrray 引导图片 按数组位置递增图片靠上
 *
 *  @return XBGuideView
 */
+(instancetype)showGudieViewWith:(NSArray <NSString *>*)imageArrray;

@end

NS_ASSUME_NONNULL_END
