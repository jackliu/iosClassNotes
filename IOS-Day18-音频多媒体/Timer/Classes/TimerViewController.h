//
//  TimerViewController.h
//  Timer
//
//  Created by goodmao on 12-3-20.
//  Copyright 2012 LDCI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimerViewController : UIViewController
{
    NSTimer *timer; 
}

//声明定时器
@property(nonatomic, retain)NSTimer *timer;

//声明定时器回调方法
- (void)updateDisplay;

@end

