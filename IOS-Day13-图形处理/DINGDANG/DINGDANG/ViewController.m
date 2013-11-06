//
//  ViewController.m
//  DINGDANG
//
//  Created by shangdejigou on 13-5-18.
//  Copyright (c) 2013年 zhang. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
@interface ViewController ()

@end

@implementation ViewController

@synthesize myView,faceSlider;

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect frame = CGRectMake(0.0f, 0.0f, 320.0f, 320.0f);
	//CGRect frame = self.view.frame;
    myView = [[MyView alloc] initWithFrame:frame];
    [self.view addSubview:myView];

    //初始化 slider 值
    [faceSlider setMaximumValue:180.0f];
    [faceSlider setMinimumValue:0.0f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeFace:(UISlider *)sender {
    //四舍五入 滑块的 值
    CGFloat senderValue = (CGFloat)round([sender value]);
    //把滑块值，传递给 MyView
    [self.myView setFaceValue:senderValue];
    //通知 MyView 让它重绘 整个页面
    //该方法自动调用 - (void)drawRect:(CGRect)rect
    //整个界面重绘
    [self.myView setNeedsDisplay];
    //在指定范围内，重绘，节约内存
    //[self.myView setNeedsDisplayInRect:(CGRect)]
}

@end



