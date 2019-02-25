//
//  DeviceViewController.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/1/23.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "DeviceViewController.h"

@implementation DeviceViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        //设置底部tab按钮标题和图标
        self.title = @"Devices";
        self.tabBarItem.image = [UIImage imageNamed:@"leftbar_icon_hub_press"];
        self.tabBarItem.accessibilityNavigationStyle=UIBarStyleBlack;
        NSLog(@"Deviceviewcontroller init~~~");
        
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"DeviceVIewController  viewDidLoad~~");
    //为view设置控制器 对导航栏的控制如标题按钮的控制在控制器里进行
    DeviceController *vc = [[DeviceController alloc]init];
    self.viewControllers = @[vc];
}
@end
