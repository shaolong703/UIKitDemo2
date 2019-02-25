//
//  DeviceDetailsSwitchCell.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/21.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "DeviceDetailsSwitchCell.h"

@implementation DeviceDetailsSwitchCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self setupUI];
    }
    
    return self;
}

- (void)setupUI {
    self.switcher = [[UISwitch alloc] init];
    self.accessoryView = self.switcher;
}
@end
