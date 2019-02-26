//
//  DeviceController.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/19.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "DeviceController.h"
#import "FCCommon.h"



//                             为tebleview设置数据需要实现两个协议
@interface DeviceController()<UITableViewDelegate,UITableViewDataSource>
//列表视图类似listview 用来展示hub和外设；
@property (nonatomic, strong)   UITableView         *tableView;
//下拉刷新控制器
@property (nonatomic, strong)   UIRefreshControl    *refreshControl;

//UITableView中的数据，用一个字符串数组来保存
@property (strong, nonatomic) NSMutableArray *tableDataArr;



@end


@implementation DeviceController
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"DeviceController init~~~");
    //设置页面导航栏标题
    self.navigationItem.title = @"Devices";
    //在导航栏右边设置加号按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addDevice)];
    //初始化UITableView 选择视图类型为UITableViewStylePlain   此处设置位置为CGRectZero0，0，0，0 款高度在tebleview引用时设置
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    //设置背景色
    self.tableView.backgroundColor = [UIColor blackColor];
    self.tableView.tableFooterView = [[UIView alloc] init];
    //设置数据来源
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    //初始化刷新时图
    self.refreshControl = [[UIRefreshControl alloc] init];
    self.refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"下拉刷新"];
    [self.refreshControl addTarget:self action:@selector(refreshDevices) forControlEvents:UIControlEventValueChanged];
    [self.tableView addSubview:self.refreshControl];
    

    /*
     自定义导航栏
     UILabel *uilabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 44)];
     uilabel.font = [UIFont boldSystemFontOfSize:20];
     uilabel.textColor = [UIColor greenColor];
     uilabel.textAlignment = NSTextAlignmentCenter;
     uilabel.text = @"Devices";
     self.navigationItem.titleView = uilabel;
     */

}
    //加号按钮点击事件
-(void)addDevice
{
    NSLog(@"点击了加号按钮!");
    AddDeviceController *vc = [[AddDeviceController alloc]init];
     [self presentViewController:vc animated:YES completion:nil];
    
}
//刷新时调用
-(void)refreshDevices
{
     NSLog(@"下拉刷新了");
    //取消下拉刷新菊花
    [self.tableView.refreshControl endRefreshing];
    
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
        return 3;
    }
    return 9;
}

/**
 *  告诉tableView第indexPath行显示怎样的cell
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //    indexPath.section; // 第几组
    //    indexPath.row; // 第几行
    //创建一个cell
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    cell.textLabel.text = @"Device";
    cell.detailTextLabel.text =@"副标题";
    
    if (indexPath.row!=0) {
        DeviceViewCell *cell2 = [[DeviceViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:nil];
        return cell2;
        
    }
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
    
    
   // [self presentViewController:vc animated:YES completion:nil];
    
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
