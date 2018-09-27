//
//  ViewController.m
//  XBGuideView
//
//  Created by 许鑫博 on 2018/9/27.
//  Copyright © 2018年 XXB. All rights reserved.
//

#import "ViewController.h"
#import "XBGuideView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    //因为内部XBGuideView是添加到keyWindows上面的,所有需要再控制器图层显示出来后再设置引导界面
    //直接加载更新引导,自动判断是否是第一次打开
    [XBGuideView showGudieViewWith:@[@"guide_1",@"guide_2",@"guide_3"]];
}

@end
