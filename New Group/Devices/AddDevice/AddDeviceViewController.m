//
//  AddDeviceViewController.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/19.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "AddDeviceViewController.h"
#import "FCCommon.h"

@implementation AddDeviceViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    self.title = @"Add Hub";
    
    UILabel *uilabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 150, SCREEN_WIDTH-200, 150)];
    uilabel.text = @"Choose a Hub";
    //设置字体大小
    uilabel.font = [UIFont systemFontOfSize:35 ];
    //点击事件
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    [uilabel addGestureRecognizer:tap];
    //开启用户交互
    uilabel.userInteractionEnabled = YES;
    [self.view addSubview:uilabel];

    NSArray *arr =[[NSArray alloc]initWithObjects:@"Add Device ",@"Add Hub",nil];
    //初始化分段控制器
    UISegmentedControl *segment = [[UISegmentedControl alloc]initWithItems:arr];
    //设置分段控制器大小
    segment.frame = CGRectMake(0+20, 0+100, SCREEN_WIDTH-40, 25);
    //为分段控制器设置点击事件
   // [segment addTarget:self action:@selector(selector) forControlEvents:UIControlEventValueChanged];
    //设置初始选中项
    segment.selectedSegmentIndex = 0;
    [self.view addSubview:segment];
    //自定义导航栏返回按钮    文字与点击事件
    UIBarButtonItem *buttonitem = [[UIBarButtonItem alloc]initWithTitle:@"Cancel" style:UIBarButtonItemStyleDone target:self action:@selector(tapAction)];
    //设置导航栏图片
    [buttonitem setImage:[UIImage imageNamed:@"back"]];
    //设置导航栏左侧按钮
    self.navigationItem.leftBarButtonItem= buttonitem;
}
//分段控制器点击事件方法
-(void)selector:(id)sender{
    UISegmentedControl* control = (UISegmentedControl *)sender;
    switch (control.selectedSegmentIndex) {
        case 0:
            NSLog(@"点击第0个按钮");
            break;
        case 1:
             NSLog(@"点击第1个按钮");
            break;
        default:
            break;
    }
}

-(void)tapAction
{
    NSLog(@"点击了文字");
    //返回之前页面并关闭当前页面
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
