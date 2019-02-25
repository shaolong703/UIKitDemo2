//
//  DeviceViewCell.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/19.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "DeviceViewCell.h"

@implementation DeviceViewCell 
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
       //创建图片9并添加到cell上
        self.deviceViewImage = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
    
        [ self.deviceViewImage setImage:[UIImage imageNamed:@"devices_hub.jpeg"]];
        [self addSubview:_deviceViewImage];
        
        
        //创建标题并添加
        self.deviceViewLabel = [[UILabel alloc]initWithFrame:CGRectMake(70, 10, 100, 20)];
        self.deviceViewLabel.text = @"外设标题";
        self.deviceViewLabel.font = [UIFont systemFontOfSize:19];
        [self addSubview:self.deviceViewLabel];
        
         //创建外设状态并添加
        self.deviceViewLabel2 = [[UILabel alloc]initWithFrame:CGRectMake(70, 40, 100, 20)];
        self.deviceViewLabel2.text = @"外设状态";
        self.deviceViewLabel2.font = [UIFont systemFontOfSize:19];
        [self addSubview:self.deviceViewLabel2];
        
        
    }
    
    return self;
}

@end
