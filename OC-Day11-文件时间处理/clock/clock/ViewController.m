//
//  ViewController.m
//  clock
//
//  Created by liu on 13-10-17.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lab;


//storyboard 界面加载完成后，通过代码，往界面上添加控件
- (void)viewDidLoad
{
    [super viewDidLoad];
	//这里添加 Label 文本标签
    lab = [[UILabel alloc]initWithFrame:CGRectMake(32.0f, 150.0f, 300.0f, 100.0f)];
    //往 标签中添加文字
    lab.text = @"00:00:00";
    //给 标签中文字设置颜色
    lab.textColor = [UIColor redColor];
    //下面添加更多属性
    [lab setFont:[UIFont fontWithName:@"DBLCDTempBlack" size:58.0]];

    //把 标签，添加到 UIView 中
    [self.view addSubview:lab];
    
    //调用更新时间的方法
    [self updateLabel];
}

#pragma mark - 更新界面标签中的时间
-(void)updateLabel
{
    //1 得到当前系统时间，不能直接使用，应该把时间值拆分开，分别取出我们需要的值
    //2013-10-17 10:45:22 +0000
    //NSDate 的值不能被拆分，是一个完整对象
    NSDate*  now  = [ [ NSDate alloc] init ];
    
    //2 不同国家和地区对计时有不同的习惯，在 Cocoa 框架中，指定了不同国家的日历
    //NSCalendar 类专门处理时间、日期等操作的工具类
    //Identifier 标识，字符串标识
    /*
     NSString * const NSGregorianCalendar;
     NSString * const NSBuddhistCalendar;
     NSString * const NSChineseCalendar;
     NSString * const NSHebrewCalendar;
     NSString * const NSIslamicCalendar;
     NSString * const NSIslamicCivilCalendar;
     NSString * const NSJapaneseCalendar;
     NSString * const NSRepublicOfChinaCalendar;
     NSString * const NSPersianCalendar;
     NSString * const NSIndianCalendar;
     NSString * const NSISO8601Calendar;
     */
    //chineseClendar 目前不包含任何时间值，只是提供了中国人习惯的格式
    NSCalendar* chineseClendar = [ [ NSCalendar alloc ] initWithCalendarIdentifier:NSChineseCalendar ];
    
    //希望从日历中取出哪些  时间的片段，可以指定
    /*
     enum {
     NSEraCalendarUnit = kCFCalendarUnitEra,
     NSYearCalendarUnit = kCFCalendarUnitYear,
     NSMonthCalendarUnit = kCFCalendarUnitMonth,
     NSDayCalendarUnit = kCFCalendarUnitDay,
     NSHourCalendarUnit = kCFCalendarUnitHour,
     NSMinuteCalendarUnit = kCFCalendarUnitMinute,
     NSSecondCalendarUnit = kCFCalendarUnitSecond,
     NSWeekCalendarUnit = kCFCalendarUnitWeek,
     NSWeekdayCalendarUnit = kCFCalendarUnitWeekday,
     NSWeekdayOrdinalCalendarUnit = kCFCalendarUnitWeekdayOrdinal,
     NSQuarterCalendarUnit = kCFCalendarUnitQuarter,
     NSWeekOfMonthCalendarUnit = kCFCalendarUnitWeekOfMonth,
     NSWeekOfYearCalendarUnit = kCFCalendarUnitWeekOfYear,
     NSYearForWeekOfYearCalendarUnit = kCFCalendarUnitYearForWeekOfYear
     NSCalendarCalendarUnit = (1 << 20),
     NSTimeZoneCalendarUnit = (1 << 21),
     };
     typedef NSUInteger NSCalendarUnit;
     */
    //将从日历中取出 时 分 秒的值
    NSUInteger unitFlags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    
    //日历可以被拆分成不同的组成部分--组件 (Component)
    //components:  表示取日历中的哪些组件  时 分  秒
    //fromDate  :  表示具体的那个时间对应日历中读取
    NSDateComponents *cps = [chineseClendar components:unitFlags fromDate:now];
    
    //按照上述指定的时间、格式读取时  分   秒
    NSInteger hour =23- [cps hour];
    NSInteger min  =59- [cps minute];
    NSInteger sec  =59- [cps second];
    
    //NSLog(@"%d : %d : %d",hour,min,sec);
    
    
	lab.text = [NSString stringWithFormat:@"%d:%d:%d", hour, min,sec];
}





//
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
