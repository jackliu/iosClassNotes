//
//  SCJDViewController.m
//  TimeToMidnight
//
//  Created by liu on 13-2-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "SCJDViewController.h"

@interface SCJDViewController ()

@end


//对头文件方法的实现
@implementation SCJDViewController

//与头文件中的属性声明配套
//确保在 *.m 文件中使用 label 属性
@synthesize label;

- (void)viewDidLoad
{    
    [super viewDidLoad];
    
    //修改界面中 的 值
    [label setFont:[UIFont fontWithName:@"DBLCDTempBlack" size:58.0]];
    
    label.text = @"哈哈";
    

}


#pragma mark - 
#pragma 更新页面中的时间显示
-(void)updateLabel
{
    NSDate*  now  = [ [ NSDate alloc] init ];
    
    NSCalendar* chineseClendar = [ [ NSCalendar alloc ] initWithCalendarIdentifier:NSChineseCalendar ];
    
    NSUInteger unitFlags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    
    NSDateComponents *cps = [chineseClendar components:unitFlags fromDate:now];
    
    NSInteger hour =23- [cps hour];
    NSInteger min  =59- [cps minute];
    NSInteger sec  =59- [cps second];
    
    //NSLog(@"%d : %d : %d",hour,min,sec);
    
    
	label.text = [NSString stringWithFormat:@"%d:%d:%d", hour, min,sec];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end




