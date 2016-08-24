//
//  NSDate+NSCalendar.h
//  DataFortter_Demo
//
//  Created by admin on 16/8/24.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (NSCalendar)


//比较from与self的时间差值
- (NSDateComponents *)deltaFrom:(NSDate *)from;
/**
 *  是否为今年
 */
- (BOOL)isThisYear;
/**
 *  是否为今天
 */
- (BOOL)isToday;
/**
 *  是否为昨天
 */
- (BOOL)isYesterday;


@end
