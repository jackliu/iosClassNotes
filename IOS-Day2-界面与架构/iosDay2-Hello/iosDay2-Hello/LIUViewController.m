//
//  LIUViewController.m
//  iosDay2-Hello
//
//  Created by shangdejigou on 13-10-24.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "LIUViewController.h"

@interface LIUViewController ()

@end

@implementation LIUViewController

@synthesize lblTitle,name,password,loginBt,registerBt;

#pragma mark - 当前界面的生命周期方法
- (void)viewDidLoad
{
    [super viewDidLoad];
	//创建界面组件
    lblTitle  = [[UILabel alloc]initWithFrame:CGRectMake(60.0f, 20.0f, 200.0f, 50.0f)];
    lblTitle.text = @"蛋定";  //等价于 getText:
    lblTitle.textColor = [UIColor redColor];
    lblTitle.backgroundColor = [UIColor whiteColor];
    //字体
    lblTitle.font = [UIFont systemFontOfSize:36];
    [lblTitle setTextAlignment:NSTextAlignmentCenter];
    
    //用户名、密码
    name = [[UITextField alloc]initWithFrame:CGRectMake(40.0f, 106.0f, 240.0f, 30.0f)];
    [name setBorderStyle:UITextBorderStyleRoundedRect];
    name.placeholder = @"用户名";
    [name setKeyboardType:UIKeyboardTypeEmailAddress];
    [name setReturnKeyType:UIReturnKeyDone];
    
    password = [[UITextField alloc]initWithFrame:CGRectMake(40.0f, 160.0f, 240.0f, 30.0f)];
    [password setBorderStyle:UITextBorderStyleRoundedRect];
    password.placeholder = @"密码";
    [password setKeyboardType:UIKeyboardTypeNamePhonePad];
    [password setReturnKeyType:UIReturnKeyDone];
    password.secureTextEntry = YES;
    
    //登录按钮、注册按钮
    loginBt = [[UIButton alloc]initWithFrame:CGRectMake(60.0f, 220.0f, 200.0f, 40.0f)];
    loginBt.titleLabel.font = [UIFont fontWithName:@"Arial" size:20];
    loginBt.backgroundColor = [UIColor grayColor];
    //正常状态下，按钮显示的文字
    [loginBt setTitle:@"登录" forState:UIControlStateNormal];
    //被选中状态，按钮显示的文字
    [loginBt setTitle:@"登录中" forState:UIControlStateHighlighted];
    //按钮点击后，调用的事件代码(用户手指离开屏幕，如何确定是否点击该按钮)
    [loginBt addTarget:self action:@selector(loginPress:) forControlEvents:UIControlEventTouchUpInside];
    
    registerBt = [[UIButton alloc]initWithFrame:CGRectMake(60.0f, 370.0f, 200.0f, 40.0f)];
    [registerBt setTitle:@"注册" forState:UIControlStateNormal];
    registerBt.titleLabel.font = [UIFont fontWithName:@"Arial" size:20];
    registerBt.backgroundColor = [UIColor grayColor];
    [registerBt addTarget:self action:@selector(registerPress:) forControlEvents:UIControlEventTouchUpInside];

    //创建背景颜色
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    //组件附加到界面上
    [self.view addSubview:lblTitle];
    [self.view addSubview:name];
    [self.view addSubview:password];
    [self.view addSubview:loginBt];
    [self.view addSubview:registerBt];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    //
}


#pragma mark - 按钮事件处理
-(void)loginPress:(id)sender
{
    NSLog(@".........点击了登录 按钮.........");
}

-(void)registerPress:(id)sender
{
    NSLog(@".........点击了注册 按钮.........");
}















@end
