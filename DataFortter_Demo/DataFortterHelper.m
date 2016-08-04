//
//  DataFortterHelper.m
//  DataFortter_Demo
//
//  Created by admin on 16/8/4.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "DataFortterHelper.h"

@implementation DataFortterHelper

+(NSString *)getCurrentTimeByFormatter:(NSString *)FormatterStr{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:FormatterStr];
    NSString *currentTime = [dateFormatter stringFromDate:[NSDate date]];
    return currentTime;
}
+(NSString *)getTimeByEndFormatter:(NSString *)EndFormatter FromFormatter:(NSString *)FromFormatter ByTimeStr:(NSString *)TimeStr{
    NSDateFormatter *dateFormter = [[NSDateFormatter alloc]init];
    [dateFormter setDateFormat:FromFormatter];
    NSDate *date = [dateFormter dateFromString:TimeStr];
    [dateFormter setDateFormat:EndFormatter];
    NSString *dateStr = [dateFormter stringFromDate:date];
    return dateStr;
}
@end
