//
//  RoutinesViewController.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/1/23.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "RoutinesViewController.h"

@implementation RoutinesViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"Routines";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_routines_normal"];
        self.tabBarItem.accessibilityNavigationStyle=UIBarStyleBlack;
    }
    return self;
}
- (void)viewDidLoad
{
    RoutinesController *vc = [[RoutinesController alloc]init];
      self.viewControllers = @[vc];
}
@end
