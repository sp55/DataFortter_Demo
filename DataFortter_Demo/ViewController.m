//
//  ViewController.m
//  DataFortter_Demo
//
//  Created by admin on 16/8/4.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

//http://www.jianshu.com/p/c5fc4f607c79
//两个日期的比较?
//http://www.jianshu.com/p/5850a5d03b8f
//判断NSDate是星期几和农历


#import "ViewController.h"
#import "DataFortterHelper.h"




@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"当前时间-->%@",[DataFortterHelper getCurrentTimeByFormatter:@"yyyy年MM月dd日HH时mm分ss秒"]);
//    NSLog(@"转换-->%@",[DataFortterHelper getTimeByEndFormatter:@"MM月dd日" FromFormatter:@"yyyy-MM-dd" ByTimeStr:@"2016-08-05"]);
    
    NSLog(@"判断NSDate是星期几---->%@",[DataFortterHelper getWeekdayStringFromDate:[NSDate date]]);
    
    NSLog(@"判断NSDate的农历---->%@",[DataFortterHelper getChineseCalendarWithDate:[NSDate date]]);

   
    NSLog(@"发帖时间优化显示---->%@",[DataFortterHelper getWriteDateByDateStr:@"2016-08-24 10:44:20"]);


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
