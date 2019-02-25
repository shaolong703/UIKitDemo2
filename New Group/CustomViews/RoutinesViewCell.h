//
//  RoutinesViewCell.h
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/21.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RoutinesViewCell : UITableViewCell
@property(nonatomic,strong) UILabel *label;
@property(nonatomic,strong ) UIImageView *image;
@property(nonatomic,strong ) UIImageView *image2;
@property(nonatomic,strong ) UISwitch *uiswitch;
@property(nonatomic,strong) NSString *string;

-(void)setRoutinesName:(NSString *)routinesString;
@end

NS_ASSUME_NONNULL_END
