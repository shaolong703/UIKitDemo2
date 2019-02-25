//
//  MeViewController.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/1/23.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "MeViewController.h"

@implementation MeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    MeController *vc  = [[MeController alloc]init];
     self.viewControllers = @[vc];
}
- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.title = @"Me";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_my_selected"];
        self.tabBarItem.accessibilityNavigationStyle=UIBarStyleBlack;
    }
    return self;
}
@end
