//
//  ViewController.m
//  NSURLConnectionImageDemo
//
//  Created by shangdejigou on 13-10-21.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize btn,imgview;

- (void)viewDidLoad
{
    [super viewDidLoad];
	//创建 按钮和图片视图组件
    btn = [[UIButton alloc]initWithFrame:CGRectMake(38.0f, 50.0f, 250.0f, 30.0f)];
    [btn setTitle:@"请求" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor greenColor]];
    //专门显示图片的视图
    imgview = [[UIImageView alloc]initWithFrame:CGRectMake(0.0f, 90.0f, 320.0f, 250.0f)];
    
    [self.view addSubview:btn];
    [self.view addSubview:imgview];
    
    
    //新建一个图片，等会用网络上得到的图片替换
    UIImage *img = [UIImage imageNamed:@"image.png"];
    imgview.image = img;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
