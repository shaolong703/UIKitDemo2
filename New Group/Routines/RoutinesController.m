//
//  RoutinesController.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/19.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//
#import "RoutinesController.h"
#import "FCCommon.h"
#import "DeviceViewHeader.h"
#import "RoutinesViewCell.h"

@interface RoutinesController()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong)UITableView  *tableView;

@end


@implementation RoutinesController
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    self.title = @"Routines";
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.backgroundColor = [UIColor blackColor];
    self.tableView.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:self.tableView];
}

/**
 *  告诉tableView一共有多少组数据
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

/**
 *  告诉tableView第section组有多少行
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
   
    return 3;
}

/**
 *  告诉tableView第indexPath行显示怎样的cell
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //    indexPath.section; // 第几组
    //    indexPath.row; // 第几行
    //创建一个cell
    RoutinesViewCell *cell = [[RoutinesViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    [cell setRoutinesName:[NSString stringWithFormat:@"Routines Name:%d",indexPath.row]];
    return cell;
    
}


/*
 返回头部view
 */
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    DeviceViewHeader *vc = [[DeviceViewHeader alloc]initWithReuseIdentifier:nil];

    return vc;
}

/**
 *  告诉tableView第section组的尾部标题
 */
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return @"";
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @" ";
}
// 点击 cell 时触发
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"选中了第%li组cell第%li个cell", (long)indexPath.section,(long)indexPath.row);
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
