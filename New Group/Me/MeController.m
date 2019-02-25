//
//  MeController.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/19.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "MeController.h"
#import "FCCommon.h"

@interface MeController()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong)UITableView  *tableView;

@end

@implementation MeController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad{
    self.title = @"Me";
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
    return 2;
}

/**
 *  告诉tableView第section组有多少行
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        //第一组三个数据
        return 3;
    }
    return 3;
}

/**
 *  告诉tableView第indexPath行显示怎样的cell
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //    indexPath.section; // 第几组
    //    indexPath.row; // 第几行
    //创建一个cell
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
   
    switch (indexPath.section) {
        case 0:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = @"Account";
                    cell.detailTextLabel.text =@"shaolong@focalcrest.com";
                    break;
                case 1:
                    cell.textLabel.text = @"Sharing";
                    cell.detailTextLabel.text =@">";
                    break;
                case 2:
                    cell.textLabel.text = @"Help and Support";
                    cell.detailTextLabel.text =@">";
                    break;
                default:
                    break;
            }
            break;
        case 1:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = @"About";
                    cell.detailTextLabel.text =@">";
                    break;
                case 1:
                    cell.textLabel.text = @"Logs";
                    cell.detailTextLabel.text =@">";
                    break;
                case 2:
                    cell.textLabel.text = @"Server Selection";
                    cell.detailTextLabel.text =@">";
                    break;
                default:
                    break;
            }
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
    return 30;
    
}

@end
