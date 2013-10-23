//
//  ViewController.m
//  clockDemo
//
//  Created by shangdejigou on 13-10-20.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lab;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
	//代码创建页面组件
    lab = [[UILabel alloc]initWithFrame:CGRectMake(38.0f, 150.0f, 300.0f, 100.0f)];
    lab.text = @"00:00:00";
    lab.textColor = [UIColor redColor];
    //设置字体
    [lab setFont:[UIFont fontWithName:@"DBLCDTempBlack" size:58.0]];
    
    //添加组件到窗口中
    [self.view addSubview:lab];
    
    [self updateLabel];
    
}


#pragma mark - 更新界面时间
-(void)updateLabel
{
    NSDate *now = [[NSDate alloc]init];
    
    NSCalendar *chineseCalendar = [[NSCalendar alloc]initWithCalendarIdentifier:NSChineseCalendar];
    
    NSUInteger unitFlags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    
    NSDateComponents *cps = [chineseCalendar components:unitFlags fromDate:now];
    
    NSInteger hour = 23-[cps hour];
    NSInteger min = 59-[cps minute];
    NSInteger sec = 59-[cps second];
    
    lab.text = [NSString stringWithFormat:@"%d:%d:%d",hour,min,sec];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
