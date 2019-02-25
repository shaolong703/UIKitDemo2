//
//  DeviceDetailsSliderCell.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/21.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "DeviceDetailsSliderCell.h"
@interface DeviceDetailsSliderCell ()

@property (nonatomic, strong)   UILabel     *label;

@end
@implementation DeviceDetailsSliderCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self setupUI];
    }
    
    return self;
}

- (void)setupUI {
    UIFont *font = self.textLabel.font;
    
    self.label = [[UILabel alloc] init];
    self.label.font = font;
    [self.contentView addSubview:self.label];
    
    self.slider = [[UISlider alloc] init];
    self.slider.minimumValue = 0;
    self.slider.maximumValue = 100;
    self.slider.continuous = NO;
    [self.contentView addSubview:self.slider];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    UIEdgeInsets insets = self.layoutMargins;
    CGRect contentFrame = self.contentView.frame;
    contentFrame.origin.x += insets.left;
    contentFrame.origin.y += insets.top;
    contentFrame.size.width -= insets.left + insets.right;
    contentFrame.size.height -= insets.top + insets.bottom;
    self.contentView.frame = contentFrame;
    
    CGFloat w = self.contentView.bounds.size.width;
    CGFloat h = self.contentView.bounds.size.height;
    
   
    
    self.label.frame = CGRectMake(0, 0, 100, h);
    CGFloat x = CGRectGetMaxX(self.label.frame) + 16;
    CGFloat sw = w - x;
    self.slider.frame = CGRectMake(x, 0, sw, h);
}

- (NSString *)title {
    return self.label.text;
}

- (void)setTitle:(NSString *)title {
    self.label.text = title;
    [self setNeedsLayout];
}
@end
