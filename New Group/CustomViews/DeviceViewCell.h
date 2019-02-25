//
//  DeviceViewCell.h
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/19.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//  device界面的 自定义cell

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface DeviceViewCell : UITableViewCell
//左侧显示的图像
@property (nonatomic,strong) UIImageView *deviceViewImage;
//右侧标题
@property(nonatomic,strong) UILabel *deviceViewLabel;
//右侧外设状态
@property(nonatomic,strong) UILabel *deviceViewLabel2;
@end

NS_ASSUME_NONNULL_END
