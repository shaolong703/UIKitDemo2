//
//  DeviceDetailsView.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/20.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "DeviceDetailsView.h"
#import "DeviceDetailsSwitchCell.h"
#import "DeviceDetailsSliderCell.h"

#import "FCCommon.h"
@interface DeviceDetailsView()<UITableViewDelegate,UITableViewDataSource>
//列表视图类似listview 用来展示hub和外设；
@property (nonatomic, strong)   UITableView         *tableView;



@end

@implementation DeviceDetailsView
- (instancetype)init
{
    self = [super init];
    if (self) {
       
    }
    return self;
}
- (void)viewDidLoad
{
    self.title = @"外设详情";
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    //设置背景色
    self.tableView.backgroundColor = [UIColor blackColor];
    self.tableView.tableFooterView = [[UIView alloc] init];
    //设置数据来源
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.view addSubview:self.tableView];
}
/**
 *  告诉tableView一共有多少组数据
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

/**
 *  告诉tableView第section组有多少行
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        //第一组三个数据
        return 2;
    }
    return 2;
}

/**
 *  告诉tableView第indexPath行显示怎样的cell
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //    indexPath.section; // 第几组
    //    indexPath.row; // 第几行
    //创建一个cell
    DeviceDetailsSwitchCell *cell = [[DeviceDetailsSwitchCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
   cell.textLabel.text = @"Switch";
    if (indexPath.section==2) {
        DeviceDetailsSliderCell *cell2 = [[DeviceDetailsSliderCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
        cell2.textLabel.text = @"Slider";
         return cell2;
    }
    return cell;
    
}


/*
 返回头部view
 */
//-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//   // DeviceViewHeader *vc = [[DeviceViewHeader alloc]initWithReuseIdentifier:nil];
//  //  return vc;
//}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"STATE";
           case 1:
            return @"ACTION";
        default:
            break;
    }
  
    
      return @"";
}

/**
 *  告诉tableView第section组的尾部标题
 */
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return @"";
}
// 点击 cell 时触发
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"选中了第%li组cell第%li个cell", (long)indexPath.section,(long)indexPath.row);
    DeviceDetailsView *vc = [[DeviceDetailsView alloc]init];
    // 跳转页面
    //[self presentViewController:vc animated:YES completion:nil];
    //把要跳转的页面压入栈中
    [self.navigationController pushViewController:vc animated:YES];
    //跳转到指定的控制器
    [self.navigationController popToViewController:vc animated:YES];
    
    
    
    
}
//设置cell的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 这个数值是根据自定义cell的高度来计算出来的
    
    return 70;
    
}
//返回组头部的高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50;
    
}
@end
