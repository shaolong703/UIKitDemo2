//
//  FCLog.h
//  UIKitDemo
//
//  Created by shaolong0703@163.com on 2019/1/22.
//  Copyright © 2019 shaolong0703@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FCLog : NSObject
+(void)logMessage:(NSString *)messge;

+(void)logMEssage:(NSString *)s aaa:(NSArray *)d;
@property (nonatomic, strong) NSString *string;
extern NSString const *string2;
@end

NS_ASSUME_NONNULL_END
