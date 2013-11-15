//
//  TimerViewController.m
//  Timer
//
//  Created by goodmao on 12-3-20.
//  Copyright 2012 LDCI. All rights reserved.
//

#import "TimerViewController.h"

@implementation TimerViewController

@synthesize timer;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"1");
    
    //创建、设置定时器回调方法，并开启定时器
    NSTimer *timerTemp = [NSTimer scheduledTimerWithTimeInterval:0.1f 
                                    target:self 
                                    selector:@selector(updateDisplay) 
                                    userInfo:nil
                                    repeats:YES];
    self.timer = timerTemp;
    
    NSLog(@"2");
    
    [timerTemp release];
    NSLog(@"3");
}

//实现定时器回调方法
- (void)updateDisplay
{
    NSLog(@"___");
    
    //停止定时器
    [self.timer invalidate];
}


@end
