//
//  LocationsViewController.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/1/23.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "LocationsViewController.h"

@implementation LocationsViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"Locations";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_locations_selected"];
        self.tabBarItem.accessibilityNavigationStyle=UIBarStyleBlack;
    }
    return self;
}
- (void)viewDidLoad{
    
    LocationsController *vc = [[LocationsController alloc]init];
     self.viewControllers = @[vc];
    
}
@end
