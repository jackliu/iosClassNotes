//
//  ViewController.m
//  compantsDemo
//
//  Created by shangdejigou on 13-10-30.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//创建常见组件的步骤：
    /*
     1、创建并初始化组件
     2、设置属性(根据软件的需要)
     3、把组件添加到当前 容器 中
     */
UILabel *lbl1 = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 10.0f, 200.0f, 150.0f)];
lbl1.backgroundColor = [UIColor redColor];


UILabel *lbl2 = [[UILabel alloc]initWithFrame:CGRectMake(20.0f, 20.0f, 100.0f, 80.0f)];
lbl2.backgroundColor = [UIColor greenColor];
[lbl1 addSubview:lbl2];

//添加按钮
UIButton *bt = [[UIButton alloc]initWithFrame:CGRectMake(10.0f, 200.0f, 124.0f, 60.0f)];

[bt setBackgroundImage:[UIImage imageNamed:@"button.png"] forState:UIControlStateNormal];





[self.view addSubview:lbl1];
[self.view addSubview:bt];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)aaaa:(id)sender {
}

@end







