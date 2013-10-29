//
//  RootViewController.h
//  NotificationCenterDemo
//
//  Created by shangdejigou on 13-10-29.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GetValueViewController;

@interface RootViewController : UIViewController

//获得输入框内容的 输出口
@property (strong, nonatomic) IBOutlet UITextField *text;
//希望跳转的下一个界面
@property(strong,nonatomic)GetValueViewController *nextView;


//按钮点击事件处理方法
- (IBAction)buttonPress:(UIButton *)sender;
//文本框释放键盘方法
- (IBAction)textFieldPress:(UITextField *)sender;
//当前界面点击释放键盘方法
- (IBAction)viewPress:(UIView *)sender;

@end




