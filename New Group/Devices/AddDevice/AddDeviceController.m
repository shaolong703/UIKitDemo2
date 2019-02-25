//
//  AddDeviceController.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/19.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "AddDeviceController.h"

@implementation AddDeviceController
- (void)viewDidLoad
{
    [super viewDidLoad];
    AddDeviceViewController *vc = [[AddDeviceViewController alloc]init];
     self.viewControllers = @[vc];
    
}
@end
