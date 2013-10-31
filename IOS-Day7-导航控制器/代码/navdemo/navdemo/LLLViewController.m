//
//  LLLViewController.m
//  navdemo
//
//  Created by liu on 13-4-19.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "LLLViewController.h"

#import "AAViewController.h"
#import "BBViewController.h"


@interface LLLViewController ()

@end

@implementation LLLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //[self.navigationController.navigationBar setHidden:YES];
    
	//这里创建一个按钮导航
    UIButton *pushBt = [[UIButton alloc]initWithFrame:CGRectMake(100, 30, 100, 60)];
    [pushBt addTarget:self action:@selector(pushButton:) forControlEvents:UIControlEventTouchUpInside];
    [pushBt setTitle:@"pushButton" forState:UIControlStateNormal];
    pushBt.backgroundColor = [UIColor redColor];
    [self.view addSubview:pushBt];
    
    /////////
    UIButton *presentBt = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 60)];
    [presentBt addTarget:self action:@selector(presentButton:) forControlEvents:UIControlEventTouchUpInside];
    [presentBt setTitle:@"弹出" forState:UIControlStateNormal];
    presentBt.backgroundColor = [UIColor redColor];
    [self.view addSubview:presentBt];
    
    
    
}

//按钮处理事件
-(void)pushButton:(UIButton *)button
{
    AAViewController *avc = [[AAViewController alloc]init];
    
    [self.navigationController pushViewController:avc animated:YES];
    
}

-(void)presentButton:(UIButton *)button
{
    BBViewController *bvc = [[BBViewController alloc]init];
    [self presentViewController:bvc animated:YES completion:^{}];
}










@end








