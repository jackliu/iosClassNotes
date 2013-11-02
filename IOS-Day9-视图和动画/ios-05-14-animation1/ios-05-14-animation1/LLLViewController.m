//
//  LLLViewController.m
//  ios-05-14-animation1
//
//  Created by liu on 13-5-14.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "LLLViewController.h"

@interface LLLViewController ()

@end

@implementation LLLViewController

@synthesize myview,myimage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	//把 imageView 添加到当前窗口中
    //[self.view addSubview:myimage];
}

- (IBAction)button1:(id)sender {
    //1 启动一个动画
    [UIView beginAnimations:@"myAnimName" context:nil];
    //2 指定动画的参数
    //设置动画时长(Duration)，单位秒
    [UIView setAnimationDuration:5];
    
    
    //希望把 myview 框改小一些
    CGRect fm = CGRectMake(49, 20, 110, 110);
    myview.frame = fm;    //边框
    //修改视图的颜色
    myview.backgroundColor = [UIColor blackColor];
    //最终修改的 UIView 的属性，有 7 个属性可供修改
    myview.alpha = 0;
    
    
    //3 结束一个动画
    [UIView commitAnimations];
}

- (IBAction)button2:(id)sender {
    //1 启动一个动画
    [UIView beginAnimations:@"myAnimName2" context:nil];
    //2 指定动画的参数
    //设置动画时长(Duration)，单位秒
    [UIView setAnimationDuration:5];
    [UIView setAnimationRepeatCount:2.5];//重复次数
    
    //希望把 myview 框改小一些
    CGRect fm = CGRectMake(49, 20, 220, 220);
    myview.frame = fm;    //边框
    //修改视图的颜色
    myview.backgroundColor = [UIColor blueColor];
    //最终修改的 UIView 的属性，有 7 个属性可供修改
    myview.alpha = 1;

    //3 结束一个动画
    [UIView commitAnimations];
}

- (IBAction)button3:(id)sender {
    //1 启动动画
    [UIView beginAnimations:@"myanimation3" context:nil];
    //2 设置动画效果
    [UIView setAnimationDuration:5];  //时长，匀速
    /*
     typedef enum {
        UIViewAnimationCurveEaseInOut,  慢进慢出，中间快
        UIViewAnimationCurveEaseIn,     慢进
        UIViewAnimationCurveEaseOut,    慢出
        UIViewAnimationCurveLinear      匀速
     } UIViewAnimationCurve;
     */
    
    [UIView setAnimationCurve: UIViewAnimationCurveEaseIn];  //设置速度曲线
    
    [UIView setAnimationTransition:UIViewAnimationTransitionNone forView:self.myimage cache:YES];   //两个界面过渡
    
    //希望把 myview 框改小一些
    CGRect fm = CGRectMake(0, 0, 0, 0);
    myview.frame = fm;    //边框
    //最终修改的 UIView 的属性，有 7 个属性可供修改
    myview.alpha = 0;
    
    
    //3 提交动画
    [UIView commitAnimations];
}

- (IBAction)button4:(id)sender {
    //1 启动，2 设置，3 ，运行 三步合一
    /*
    [UIView animateWithDuration:5
                     animations:^(void){
                         //iOS 5 之后出现的新语法
                         //主要用在多线程中，动画中使用代码块
                         //Block Code
                         //想让动画运行的最终效果
                         myview.frame =CGRectMake(0, 0, 0, 0);
                         myview.alpha = 0;
                     }];
    */
    [UIView animateWithDuration:5
                          delay:5
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^(void){
                         myview.frame =CGRectMake(0, 0, 0, 0);
                         myview.alpha = 0;
                     }
                     completion:^(BOOL finished){
                         if (finished) {
                             NSLog(@"动画结束......");

                         }
                    }];
    
}
@end










