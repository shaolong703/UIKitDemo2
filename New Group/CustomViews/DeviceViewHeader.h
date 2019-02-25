//
//  DeviceViewHeader.h
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/20.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

/**
 可以继承UIView
 此处继承UITableViewHeaderFooterView
 因为系统提供的UITableViewHeaderFooterView 有重用机制
 */
@interface DeviceViewHeader : UITableViewHeaderFooterView
@property (nonatomic,strong) UILabel *uuidLable;
@property (nonatomic,strong) UIImageView *cloudImage;

@end

NS_ASSUME_NONNULL_END
