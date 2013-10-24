//
//  ViewController.m
//  iosDay2-Hello2
//
//  Created by shangdejigou on 13-10-24.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize name,pwd,lbl,info;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//登录按钮的事件处理
-(IBAction)loginPress:(id)sender
{
    NSLog(@"......点击了 登录 按钮.......");
    //修改 界面上得标题
    //lbl.text = @"蛋疼";
    int nameLength = [name.text length];
    
    NSLog(@"nameLength = %d",nameLength);
    int pwdLength = [pwd.text length];
    NSLog(@"pwdLength = %d",pwdLength);
    
    if (0 == nameLength) {
        info.text = @"请输入用户名";
    }
    else if (0 == pwdLength) {
        info.text = @"请输入密码";
    }
    else if (![@"123" isEqualToString:name.text])
    {
        //进行用户名、密码的验证
        info.text =@"用户名错误，请重新输入";
    }
    else if(![@"abc" isEqualToString:pwd.text]) {
        info.text = @"密码输入错误，请重新输入";
    }
    else if ([@"123" isEqualToString:name.text] && [@"abc" isEqualToString:pwd.text])
    {
        info.text =@"登录成功......";
    }
    else
    {
        NSLog(@"登录失败.....");
        info.text=@"登录失败.....";
    }
}

- (IBAction)registerPress:(id)sender {
    NSLog(@"......点击了 注册 按钮.......");
}

- (IBAction)nameField:(UITextField *)sender {
    //释放第一响应者
    //resign 辞职
    [sender resignFirstResponder];
}

- (IBAction)passwordFile:(UITextField *)sender {
    [sender resignFirstResponder];
}

- (IBAction)viewPress:(id)sende
{
    //在代码中，调用到界面的 输入框
    [name resignFirstResponder];
    [pwd resignFirstResponder];
}







@end
