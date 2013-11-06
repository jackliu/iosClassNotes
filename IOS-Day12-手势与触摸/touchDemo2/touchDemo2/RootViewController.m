//
//  RootViewController.m
//  touchDemo2
//
//  Created by shangdejigou on 13-11-6.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

@synthesize lbl1,lbl2,lbl3,swipe,tap;

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
    //1 设置手势对象的参数
    //直接使用手势判断对象，确定手势并调用方法
    //UISwipeGestureRecognizer *vertical = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(reportYSwipe:)];
    //设置手势方向
    self.swipe.direction = UISwipeGestureRecognizerDirectionUp|UISwipeGestureRecognizerDirectionDown;
    //设置手势发生后，调用的方法
    [swipe addTarget:self action:@selector(showMessageY)];
    
    
    //再添加一个手势
    UISwipeGestureRecognizer *horizontal = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(showMessageX)];
    //设置手势方向
    horizontal.direction = UISwipeGestureRecognizerDirectionLeft|UISwipeGestureRecognizerDirectionRight;
    
    //2 把手势对象，添加到对应的界面组件中
    [self.view addGestureRecognizer:horizontal];
    
    //图片点击的手势
    /*
    UITapGestureRecognizer *dTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(tapImage)];
     */
    UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(0.0f, 300.0f, 320.0f, 320.0f)];
    [img setImage:[UIImage imageNamed:@"png5.png"]];
    [self.view addSubview:img];
    
    
    
    
    [tap addTarget:self action:@selector(tapImage)];
    tap.numberOfTapsRequired = 1;      //设置点击次数为 1 次
    tap.numberOfTouchesRequired = 1;   //设置 1 根手指

    
    
    [self.view addGestureRecognizer:tap];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showMessageY
{
    self.lbl1.text = @"垂直方向移动.......";
}

-(void)showMessageX
{
    self.lbl1.text = @"水平方向移动.......";
}

-(void)tapImage
{
    NSLog(@"点击一次图片........");
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"点击了一次图片" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    [alert show];
}


@end
