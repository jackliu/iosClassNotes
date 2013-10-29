//
//  RootViewController.m
//  NotificationCenterDemo
//
//  Created by shangdejigou on 13-10-29.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "RootViewController.h"
#import "GetValueViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

@synthesize text,nextView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPress:(UIButton *)sender {
    //1 按钮点击，得到用户输入内容
    NSString *str = self.text.text;
    NSLog(@"用户输入内容 %@ ",str);
    
    //3 界面跳转到 下一个，同时在注册   观察者
    nextView = [[GetValueViewController alloc]initWithNibName:@"GetValueViewController" bundle:nil];
    // 使用动画效果，切换界面
    [self presentModalViewController:nextView animated:YES];
    
    //2 把值放入通知中心
    [[NSNotificationCenter defaultCenter] postNotificationName:@"clickBtn"
                      object:str
                    userInfo:[NSDictionary dictionaryWithObject:str forKey:@"name"]];
    //把当前视图控制器放入通知中心，便于在下一个界面中返回
    [[NSNotificationCenter defaultCenter]postNotificationName:@"root" object:self];
    
}

- (IBAction)textFieldPress:(UITextField *)sender {
    [sender resignFirstResponder];
}

- (IBAction)viewPress:(UIView *)sender {
    [self.text resignFirstResponder];
}


@end
