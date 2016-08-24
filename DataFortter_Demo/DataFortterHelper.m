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


+(NSString*)getWeekdayStringFromDate:(NSDate*)inputDate {
    NSArray *weekdaysArr = [NSArray arrayWithObjects: [NSNull null], @"星期天", @"星期一", @"星期二", @"星期三", @"星期四", @"星期五", @"星期六", nil];
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSTimeZone *timeZone = [[NSTimeZone alloc] initWithName:@"Asia/Shanghai"];
    [calendar setTimeZone: timeZone];
    NSCalendarUnit calendarUnit = NSCalendarUnitWeekday;
    NSDateComponents *theComponents = [calendar components:calendarUnit fromDate:inputDate];
    return [weekdaysArr objectAtIndex:theComponents.weekday];
}

+(NSString*)getChineseCalendarWithDate:(NSDate *)date{
    NSArray *chineseYearsArr = [NSArray arrayWithObjects:
                             @"甲子", @"乙丑", @"丙寅", @"丁卯",  @"戊辰",  @"己巳",  @"庚午",  @"辛未",  @"壬申",  @"癸酉",
                             @"甲戌",   @"乙亥",  @"丙子",  @"丁丑", @"戊寅",   @"己卯",  @"庚辰",  @"辛己",  @"壬午",  @"癸未",
                             @"甲申",   @"乙酉",  @"丙戌",  @"丁亥",  @"戊子",  @"己丑",  @"庚寅",  @"辛卯",  @"壬辰",  @"癸巳",
                             @"甲午",   @"乙未",  @"丙申",  @"丁酉",  @"戊戌",  @"己亥",  @"庚子",  @"辛丑",  @"壬寅",  @"癸丑",
                             @"甲辰",   @"乙巳",  @"丙午",  @"丁未",  @"戊申",  @"己酉",  @"庚戌",  @"辛亥",  @"壬子",  @"癸丑",
                             @"甲寅",   @"乙卯",  @"丙辰",  @"丁巳",  @"戊午",  @"己未",  @"庚申",  @"辛酉",  @"壬戌",  @"癸亥", nil];
    NSArray *chineseMonthsArr=[NSArray arrayWithObjects:
                            @"正月", @"二月", @"三月", @"四月", @"五月", @"六月", @"七月", @"八月",
                            @"九月", @"十月", @"冬月", @"腊月", nil];
    NSArray *chineseDaysArr=[NSArray arrayWithObjects:
                          @"初一", @"初二", @"初三", @"初四", @"初五", @"初六", @"初七", @"初八", @"初九", @"初十",
                          @"十一", @"十二", @"十三", @"十四", @"十五", @"十六", @"十七", @"十八", @"十九", @"二十",
                          @"廿一", @"廿二", @"廿三", @"廿四", @"廿五", @"廿六", @"廿七", @"廿八", @"廿九", @"三十",  nil];
    NSCalendar *localeCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese];
    unsigned unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth |  NSCalendarUnitDay;
    NSDateComponents *localeComp = [localeCalendar components:unitFlags fromDate:date];
//    NSLog(@"%zd_%zd_%zd",localeComp.year,localeComp.month,localeComp.day);
    NSString *y_str = [chineseYearsArr objectAtIndex:localeComp.year-1];
    NSString *m_str = [chineseMonthsArr objectAtIndex:localeComp.month-1];
    NSString *d_str = [chineseDaysArr objectAtIndex:localeComp.day-1];
    NSString *chineseCal_str =[NSString stringWithFormat: @"%@->%@->%@",y_str,m_str,d_str];
    return chineseCal_str;
}





+ (NSString *)getWriteDateByDateStr:(NSString *)dateStr{
    //日期格式化类
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    //设置日期格式：根据格式才可以解析
    fmt.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    //帖子创建时间
    NSDate *create = [fmt dateFromString:dateStr];
    if (create.isThisYear) {//今年
        if (create.isToday) {//今天
            NSDateComponents *cmps = [[NSDate date]deltaFrom:create];
            if (cmps.hour >= 1) {//大于等于1小时
                return [NSString stringWithFormat:@"%zd小时前",cmps.hour];
            }else if (cmps.minute >= 1){//小于1小时，大于等于1分钟
                return [NSString stringWithFormat:@"%zd分钟前",cmps.minute];
            }else {//1分钟内
                return @"刚刚";
            }
            
        }else if (create.isYesterday){//昨天
            fmt.dateFormat = @"昨天 HH:mm:ss";
            return [fmt stringFromDate:create];
            
        }else {//其它
            fmt.dateFormat = @"MM-dd HH:mm:ss";
            return [fmt stringFromDate:create];
        }
    }else{//不是今年
        return dateStr;
    }    
}

@end
