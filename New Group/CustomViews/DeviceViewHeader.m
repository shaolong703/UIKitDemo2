//
//  DeviceViewHeader.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/20.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "DeviceViewHeader.h"
#import "FCCommon.h"

@implementation DeviceViewHeader
- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        self.uuidLable = [[UILabel alloc]initWithFrame:CGRectMake(10,0, 250, 50)];
        self.uuidLable.text = @"Home - Hub UUID";
        self.uuidLable.textColor = [UIColor blackColor];
        self.uuidLable.font = [UIFont systemFontOfSize:22];
        self.cloudImage = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-50, 0, 50, 50)];
        [self.cloudImage setImage:[UIImage imageNamed:@"devices_status_local"]];
        [self addSubview:_cloudImage];
        [self addSubview:_uuidLable];
        self.backgroundColor = [UIColor lightGrayColor];
    }
    
    return self;
}
@end
