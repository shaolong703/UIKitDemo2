//
//  LocationsController.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/19.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "LocationsController.h"
#import "FCCommon.h"
#include "LocationsController.h"
@interface LocationsController()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong)UITableView  *tableView;
@end
@implementation LocationsController
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (void)viewDidLoad
{
    self.title = @"Locations";
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.backgroundColor = [UIColor whiteColor];
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
    if (section==0) {
      
        return 1;
    }
    return 1;
}

/**
 *  告诉tableView第indexPath行显示怎样的cell
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //    indexPath.section; // 第几组
    //    indexPath.row; // 第几行
    //创建一个cell
   LocationsViewCell *cell = [[LocationsViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:nil];
    
    switch (indexPath.section) {
        case 0:
          
            
            break;
        
        default:
            break;
    }
    return cell;
    
}


/*
 返回头部view
 */
//-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//
//
//    return @"1";
//}

/**
 *  告诉tableView第section组的尾部标题
 */
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return @"";
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"HOME 3de2dad1";
}
// 点击 cell 时触发
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"选中了第%li组cell第%li个cell", (long)indexPath.section,(long)indexPath.row);
    [self sessionGET1];
    
}
//设置cell的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 这个数值是根据自定义cell的高度来计算出来的
    
    return SCREEN_WIDTH;
    
}
//返回组头部的高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 60;
    
}

//get请求第一种方式
-(void)sessionGET1{
    //1.确定请求路径
    NSURL *tianqiurl = [NSURL URLWithString:@"http://t.weather.sojson.com/api/weather/city/101030100"];
    //2.创建请求对象  请求对象内部已经包含了请求头和请求方法
    NSURLRequest *request = [NSURLRequest requestWithURL:tianqiurl];
    //3.获得对话对象
    NSURLSession *session = [NSURLSession sharedSession];
    //4.根据回话对象创建一个Task 发送请求
    NSURLSessionDataTask *tianqiTask  = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error==nil) {
            NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        
            NSLog(@"%@",dict);
        }
        
    }];
    
    [tianqiTask resume];
}

@end
