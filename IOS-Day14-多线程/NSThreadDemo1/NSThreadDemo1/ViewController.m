//
//  ViewController.m
//  NSThreadDemo1
//
//  Created by shangdejigou on 13-11-7.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imgView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	//初始化 UIImageView 对象
    self.imgView  = [[UIImageView alloc]initWithFrame:CGRectMake(10.0f, 20.0f, 250.0f, 250.0f)];
    [self.view addSubview:imgView];
    
    //单线程调用
    //[self downloadImage:kURL];
    
    //多线程调用，在 main 的主线程之外，再创建一个新的线程
    //参数2 该线程调用的是哪个方法
    //参数3 通过该线程传递给调用方法的参数值
    //参数1 要调用的方法，在哪个对象中实现的
    NSThread *t1 = [[NSThread alloc]initWithTarget:self selector:@selector(downloadImage:) object:kURL];
    //手工创建，手工启动
    [t1 start];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)downloadImage:(NSString *)url
{
    NSData *data = [[NSData alloc]initWithContentsOfURL:[NSURL URLWithString:url]];
    UIImage *image = [[UIImage alloc]initWithData:data];
    
    if (![NSThread isMainThread]) {
        NSLog(@"当前是在  子线程中执行 ............");
    }
    
    if (image == nil) {
        NSLog(@"图片下载失败.....");
    }else
    {
        //调用更新界面的方法，单线程的做法
        //[self updateUI:image];
        
        //多线程调用,更新界面，需要通过主线程进行
        [self performSelectorOnMainThread:@selector(updateUI:) withObject:image waitUntilDone:YES];
    }
}


//界面交互、更新 全部在主线程中进行
-(void)updateUI:(UIImage *)img
{
    //得到当前线程，判断是否是主线程
    if ([NSThread isMainThread]) {
        NSLog(@"当前是在主线程中执行 ............");
    }
    //线程暂停 5 秒
    [NSThread sleepForTimeInterval:5];
    
    self.imgView.image = img;
}





@end
