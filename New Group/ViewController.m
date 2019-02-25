//
//  ViewController.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/1/22.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "ViewController.h"
#import "FCCommon.h"
#import "DeviceViewController.h"
#import "LocationsViewController.h"
#import "RoutinesViewController.h"
#import "MeViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *uilabel;
@property(nonatomic,strong) UILabel *uilabel2;
@property(nonatomic,strong) UISegmentedControl *uisegmeted;
//#define SCREEN_WIDTH   [UIScreen mainScreen].bounds.size.width
//#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [FCLog logMessage:@"1212"];
    
    self.uilabel = [[UILabel alloc] init];
    self.uilabel.frame = CGRectMake( SCREEN_WIDTH/2,0, 1, SCREEN_HEIGHT);
    self.uilabel.backgroundColor = UIColor.blackColor;
    
    self.uilabel2 = [[UILabel alloc] init];
    self.uilabel2.frame = CGRectMake( 0,SCREEN_HEIGHT/2, SCREEN_WIDTH, 1);
    self.uilabel2.backgroundColor = UIColor.blackColor;
    
    
    
    UIViewController *deviceViewc = [[DeviceViewController alloc]init];
    
    UIViewController *locationsViewc = [[LocationsViewController alloc] init];
    
    UIViewController *routinesViewc = [[RoutinesViewController alloc] init];
    
    UIViewController *meViewc = [[MeViewController alloc] init];
    
    //[deviceViewc.view addSubview:_uisegmeted];
    //中心线
    //[deviceViewc.view addSubview:_uilabel];
  // [deviceViewc.view addSubview:_uilabel2];
  
    self.viewControllers = @[deviceViewc, locationsViewc, routinesViewc, meViewc];
    self.selectedIndex=0;

}


@end
