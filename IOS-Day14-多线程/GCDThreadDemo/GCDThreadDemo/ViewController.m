//
//  ViewController.m
//  GCDThreadDemo
//
//  Created by shangdejigou on 13-11-8.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize btn,spinner;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //运行前，不看到 菊花
    [self.spinner removeFromSuperview];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPress:(UIButton *)sender {
    
    //设置按钮禁用效果
    btn.enabled = NO;
    btn.alpha = 0.5f;
    //让菊花显示在界面上
    [self.view addSubview:spinner];
    [spinner startAnimating];  //菊花开始转动
    
    [self downloadImage:kURL];
}



//根据指定路径下载图片
-(void)downloadImage:(NSString *)url
{
    //当前时间，线程启动的时间，毫秒数
    NSDate *startTime = [NSDate date];
    
    //调用了一个 全局并发队列，该队列管理 ^{} 中的代码-子线程
    //dispatch_saync();  允许队列中的多个线程异步运行
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        //下面代码消耗线程时间,目前代码受 线程队列的控制，是一个子线程
        NSData *data = [[NSData alloc]initWithContentsOfURL:[NSURL URLWithString:url]];
        UIImage *image = [[UIImage alloc]initWithData:data];
        
        //增加线程阻塞时间
        NSString *st = [self fecthSomethingFormServer];
        NSString *st2 = [self processData:st];
        
        if (image == nil) {
            NSLog(@"图片下载失败.....");
        }else
        {
            //图片下载完成，更新界面
            //界面交互、更新 全部在主线程中进行
            //[self performSelectorOnMainThread:@selector(updateUI:) withObject:image waitUntilDone:YES];
            
            //多线程调用,更新界面，需要通过主线程进行
            dispatch_async(dispatch_get_main_queue(), ^{
                self.imgView.image = image;
                //更新按钮效果和菊花
                btn.enabled = YES;
                btn.alpha = 1.0;
                [spinner stopAnimating];
                [spinner removeFromSuperview];
            });
            
            
        }
        
        //结束时间
        NSDate *endTime = [NSDate date];
        
        NSLog(@"线程执行花费时间为 %f ",[endTime timeIntervalSinceDate:startTime]);
    });
    
    
}



//每个方法都是一个子线程
-(NSString *)fecthSomethingFormServer
{
    [NSThread sleepForTimeInterval:1];
    return @"hello ios";
}

-(NSString *)processData:(NSString *)data
{
    [NSThread sleepForTimeInterval:2];
    return [data uppercaseString];
}



@end
