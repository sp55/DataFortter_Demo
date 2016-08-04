//
//  ViewController.m
//  DataFortter_Demo
//
//  Created by admin on 16/8/4.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "DataFortterHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"当前时间-->%@",[DataFortterHelper getCurrentTimeByFormatter:@"yyyy年MM月dd日HH时mm分ss秒"]);
    NSLog(@"转换-->%@",[DataFortterHelper getTimeByEndFormatter:@"MM月dd日" FromFormatter:@"yyyy-MM-dd" ByTimeStr:@"2016-08-05"]);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
