//
//  ViewController.m
//  ocDay7-Demo
//
//  Created by liu on 13-10-14.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "ViewController.h"

//匿名类别，补充一些私有的属性或方法
@interface ViewController ()

@end


//类的实现
@implementation ViewController

//实现 属性的 getter/setter 方法
@synthesize button1,button2;

//创建，分配内存
- (void)viewDidLoad
{
    [super viewDidLoad];
	//创建按钮
    //引用计数为 1
    button1 = [[UIButton alloc]initWithFrame:CGRectMake(100.0f, 100.0f, 80.0f, 30.0f)];
    //添加按钮上的文字，颜色
    button1.backgroundColor = [UIColor redColor];
    //把按钮添加到窗口中
    [self.view addSubview:button1];
    
    //创建按钮
    //引用计数为 1
    button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    
    //[button2 retain];
    [self pressButton:button2];
    
    //因为后面的方法还可能使用 buttin1 ，不能 release
    //需要把引用计数加 1
    //[button1 release];
    //[button1 retain];
    [self pressButton:button1];
}


//点击按钮操作
-(void)pressButton:(UIButton *)bt
{
     //接受外部传递的按钮对象
     //在该 {}  内部， button1 的引用计数为 1
    //使用按钮代码
    
    //新建一个文本对象
    NSString *str= [[NSString alloc]initWithString:@"hello"];
    //在当前 {} 内部 使用文本对象
    
    
    
    
    
    //使用完毕一定 释放
    //[str release];
    //代码块结束，跳出时要把引用计数
    //[button1 release];
}

//释放内存
-(void)dealloc
{
    //[button1 release];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end




