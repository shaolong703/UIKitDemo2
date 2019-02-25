//
//  FCLog.m
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/1/22.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import "FCLog.h"

@implementation FCLog

+(void)logMessage:(NSString *)messge
{
   
    NSLog(@"%@",messge);
   
    
}
+(void)logMEssage:(NSString *)s aaa:(NSArray *)d
{
    
    
     NSLog(@"%@",s);
     NSLog(@"%@",d);
    
}


-(NSString *)logMEssage2
{
    return @"3";
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
@end
