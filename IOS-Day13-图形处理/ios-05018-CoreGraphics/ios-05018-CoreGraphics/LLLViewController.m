//
//  LLLViewController.m
//  ios-05018-CoreGraphics
//
//  Created by liu on 13-5-18.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "LLLViewController.h"

#import "CoreGraphicsView.h"

@interface LLLViewController ()

@end

@implementation LLLViewController

@synthesize cview;

- (void)viewDidLoad
{
    [super viewDidLoad];
	//创建自定义视图
    CGRect frame = CGRectMake(0, 0, 320, 480);
    //简化方法，得当当前窗口的尺寸
    //CGRect f2 = self.view.frame;
    //CGRect f3 = self.view.bounds;
    
    self.cview = [[CoreGraphicsView alloc]initWithFrame:frame];
    //添加到当前窗口中
    [self.view addSubview:cview];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
