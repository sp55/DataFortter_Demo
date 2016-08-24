//
//  DataFortterHelper.h
//  DataFortter_Demo
//
//  Created by admin on 16/8/4.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+NSCalendar.h"
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


//判断NSDate是星期几
+(NSString*)getWeekdayStringFromDate:(NSDate*)inputDate;

//判断NSDate的农历
+(NSString*)getChineseCalendarWithDate:(NSDate *)date;


//发帖时间优化显示
/*
 今年
 今天
 大于1小时 （xxx小时之前）
 小于1小时，大于1分钟 (xxx分钟之前)
 其它（1分钟内） （刚刚发布）
 昨天 （昨天 17:25）
 其它 (月-日 时:分:秒)
 不是今年 （ (年-月-日 时:分:秒）
 */
+ (NSString *)getWriteDateByDateStr:(NSString *)dateStr ;

@end
