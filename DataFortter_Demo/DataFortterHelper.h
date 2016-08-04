//
//  DataFortterHelper.h
//  DataFortter_Demo
//
//  Created by admin on 16/8/4.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataFortterHelper : NSObject

#pragma mark - 当前时间年月日时分秒
/*
 Formatter:
 yyyy-MM-dd HH:mm:ss
 MM-dd
 MM月dd日
 */
+(NSString *)getCurrentTimeByFormatter:(NSString *)FormatterStr;

//将某种时间格式转成需要的时间格式
/*
 FromFormatter:
 yyyy-MM-dd
 
 EndFormatter:
 MM月dd日
 */
+(NSString *)getTimeByEndFormatter:(NSString *)EndFormatter FromFormatter:(NSString *)FromFormatter ByTimeStr:(NSString *)TimeStr;
@end
