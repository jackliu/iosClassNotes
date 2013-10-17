//
//  ViewController.h
//  clock
//
//  Created by liu on 13-10-17.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

//这里就是我们看到的窗口的  控制代码区域
//在这里通过代码控制界面显示

@interface ViewController : UIViewController


@property(nonatomic,retain)UILabel *lab;

//更新 标签中的时间
-(void)updateLabel;

@end






