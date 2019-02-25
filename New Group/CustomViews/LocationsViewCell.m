//
//  LocationsViewCell.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/2/20.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//


#import "LocationsViewCell.h"
#import "FCCommon.h"

@interface LocationsViewCell()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@end



@implementation LocationsViewCell
// 注意const的位置
static NSString *const cellId = @"cellId";
static NSString *const headerId = @"headerId";
static NSString *const footerId = @"footerId";

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
      //创建一个layout布局类
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
        //创建clooectionView通过一个布局策略创建
        self.uicollection  = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_WIDTH) collectionViewLayout:layout];
        //设置代理
        self.uicollection.delegate =self;
        self.uicollection.dataSource  =self;
        self.uicollection.backgroundColor = UIColor.whiteColor;
        //注册cell、sectionHeader、sectionFooter
        [self.uicollection registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellId];
        [self.uicollection registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:headerId];
        [self.uicollection registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:footerId];
        [self addSubview:self.uicollection];
        self.backgroundColor =UIColor.blueColor;
        
    }
    
    return self;
}

//定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 3;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}

////每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(0,0,SCREEN_WIDTH/3,SCREEN_WIDTH/3)];
    [image setImage:[UIImage imageNamed:@"devices_hub"]];
    [cell addSubview:image];

    return cell;
}

#pragma mark --UICollectionViewDelegate

//UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
 NSLog(@"点击了第%ld分item",(long)indexPath.item);
    
    
    [self sessionGET1];
    
}

//返回这个UICollectionView是否可以被选择
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
//返回cell 的尺寸
- (CGSize)collectionView: (UICollectionView *)collectionView layout: (UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath: (NSIndexPath *)indexPath
{
    return CGSizeMake(SCREEN_WIDTH/3-10, SCREEN_WIDTH/3-10);
    
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
            
            NSLog(@"天气接口返回的数据---》 GET1 〉%@",dict);
        }
        
    }];
    
    [tianqiTask resume];
}

-(void)sessionPost{
     //POST请求需要修改请求方法为POST，并把参数转换为二进制数据设置为请求体
    
    //1.创建会话对象 （共享会话）
    NSURLSession *session = [NSURLSession sharedSession];
    
    //2.根据会话对象创建task（确定请求路径）
    NSURL *url = [NSURL URLWithString:@""];
    
    //3.创建可变的请求对象
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    //4.修改请求方法为post
    request.HTTPMethod = @"POST";
    
    //5.设置请求体
    request.HTTPBody = [@"username=520it&pwd=520it&type=JSON" dataUsingEncoding:NSUTF8StringEncoding];
    
    //6.根据会话对象创建一个Task(发送请求）
        /*
            第一个参数：请求对象
            第二个参数：completionHandler回调（请求完成【成功|失败】的回调）
                      data：响应体信息（期望的数据）
                      response：响应头信息，主要是对服务器端的描述
                      error：错误信息，如果请求失败，则error有值
               */
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
                 //8.解析数据
                 NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
                 NSLog(@"%@",dict);
        
             }];
    
         //7.执行任务
         [dataTask resume];

}
@end
