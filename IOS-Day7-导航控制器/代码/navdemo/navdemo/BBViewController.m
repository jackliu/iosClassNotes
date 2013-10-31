//
//  BBViewController.m
//  navdemo
//
//  Created by liu on 13-4-19.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "BBViewController.h"

@interface BBViewController ()

@end

@implementation BBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//返回按钮
    UIButton *dismissVCBt = [[UIButton alloc]initWithFrame:CGRectMake(10, 200, 100, 60)];
    [dismissVCBt addTarget:self action:@selector(dismissButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [dismissVCBt setTitle:@"dismissVC" forState:UIControlStateNormal];
    dismissVCBt.backgroundColor = [UIColor redColor];
    [self.view addSubview:dismissVCBt];
}

- (void)dismissButton:(UIButton *)bt
{
    [super didReceiveMemoryWarning];
    [self dismissViewControllerAnimated:YES completion:^{}];
}

@end










