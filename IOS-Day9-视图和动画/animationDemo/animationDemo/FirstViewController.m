//
//  FirstViewController.m
//  animationDemo
//
//  Created by shangdejigou on 13-11-1.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize v1,v2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"UIView", @"UIView");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	//编写动画代码，
    //1 创建一个被动画控制的 UIView，起点
    v1 = [[UIView alloc]initWithFrame:CGRectMake(70.0f, 50.0f, 150.0f, 150.0f)];
    v1.backgroundColor= [UIColor colorWithRed:155.0f/255.0f green:1.0f/255.0f blue:20.0f/255.0f alpha:1.0f];
    [self.view addSubview:v1];
    
    
    //创建第二个视图，作为背景
    v2 = [[UIImageView alloc]initWithFrame:CGRectMake(70.0f, 50.0f, 150.0f, 150.0f)];
    [v2 setImage:[UIImage imageNamed:@"111.png"]];
    [self.view insertSubview:v2 belowSubview:v1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//方法一，使用 UIView 自带的类方法实现动画
- (IBAction)buttonPress:(id)sender {    
    //创建动画的上下文
    [UIView beginAnimations:@"v1Animation" context:nil];
    //指定动画效果的参数
    //指定动画时间，秒
    [UIView setAnimationDuration:8]; //匀速改变
    //指定动画的移动曲线，先慢后快， 4 个动画效果
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    
    //指定动画的二维变换效果
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:v1 cache:YES];
    
        //动画内容，希望他变成什么效果,终点
        //变颜色
        v1.backgroundColor =[UIColor colorWithRed:15.0f/255.0f green:10.0f/255.0f blue:10.0f/255.0f alpha:0.5f];
        //变大小
        v1.frame = CGRectMake(70.0f, 50.0f, 200.0f, 250.0f);
        //变位置
    
    [UIView setAnimationRepeatAutoreverses:YES];

    //结束一个动画
    [UIView commitAnimations];
    
    //还原
    v1.backgroundColor= [UIColor colorWithRed:155.0f/255.0f green:1.0f/255.0f blue:20.0f/255.0f alpha:1.0f];
    v1.frame = CGRectMake(70.0f, 50.0f, 150.0f, 150.0f);
    
}

//方法二，使用 UIView Block 代码块实现动画
- (IBAction)buttonPress2:(id)sender {
    //animateWithDuration 是一个函数，接收两个参数，1 时长，2 多行代码
    /*
    [UIView animateWithDuration:5 animations:^(void){
        //变颜色
        v1.backgroundColor =[UIColor colorWithRed:15.0f/255.0f green:10.0f/255.0f blue:10.0f/255.0f alpha:0.5f];
        //变大小
        v1.frame = CGRectMake(70.0f, 50.0f, 200.0f, 250.0f);
        }];
    
    
    [UIView animateWithDuration:5 animations:^(void){
        //变颜色
        v1.backgroundColor =[UIColor colorWithRed:15.0f/255.0f green:10.0f/255.0f blue:10.0f/255.0f alpha:0.5f];
        //变大小
        v1.frame = CGRectMake(70.0f, 50.0f, 200.0f, 250.0f);
        } completion:^(BOOL finished){
            //还原
            v1.backgroundColor= [UIColor colorWithRed:155.0f/255.0f green:1.0f/255.0f blue:20.0f/255.0f alpha:1.0f];
            v1.frame = CGRectMake(70.0f, 50.0f, 150.0f, 150.0f);
        }];
    */
    
    [UIView animateWithDuration:5
                          delay:0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
                                //变颜色
                                v1.backgroundColor =[UIColor colorWithRed:15.0f/255.0f green:10.0f/255.0f blue:10.0f/255.0f alpha:0.5f];
                                //变大小
                                v1.frame = CGRectMake(70.0f, 50.0f, 200.0f, 250.0f);
                            }
                     completion:^(BOOL finished) {
                                //还原
                                v1.backgroundColor= [UIColor colorWithRed:155.0f/255.0f green:1.0f/255.0f blue:20.0f/255.0f alpha:1.0f];
                                v1.frame = CGRectMake(70.0f, 50.0f, 150.0f, 150.0f);
                            }];
    
    
}


@end




