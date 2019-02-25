//
//  RoutinesViewCell.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/21.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "RoutinesViewCell.h"
#import "FCCommon.h"

@implementation RoutinesViewCell

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //初始化switch视图
        self.uiswitch = [[UISwitch alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60, 10, 100, 40)];
        //设置j控件开启状态填充色
        self.uiswitch.onTintColor = [UIColor greenColor];
        //设置控件按钮颜色
        self.uiswitch.thumbTintColor = [UIColor orangeColor];
        // 设置控件关闭状态填充色
         self.uiswitch.tintColor = [UIColor redColor];
        
        self.image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
        [self.image setImage:[UIImage imageNamed:@"devices_hub"]];
        
        self.label = [[UILabel alloc]initWithFrame:CGRectMake(50, 0, 200, 50)];
        self.label.text = self.string;
       
         self.image2 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-50, 0, 50, 50)];
         [self.image2 setImage:[UIImage imageNamed:@"list_right_button_play"]];
        
        [self addSubview:self.uiswitch];
        [self addSubview:self.image];
        [self addSubview:self.label];
        [self addSubview:self.image2];
    }
    
    return self;
}
-(void)setRoutinesName:(NSString *)routinesString
{
   self.string = routinesString;
  self.label.text = self.string;
}


@end
