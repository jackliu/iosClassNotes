//
//  ViewController.m
//  XMLParserDemo2
//
//  Created by shangdejigou on 13-10-22.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"
//导入 libxml2 中的工具类


@interface ViewController ()

//扩展一些新的属性
@property(nonatomic,strong)NSXMLParser *xlmParser; //xml 解析器
@property(nonatomic,strong)NSMutableString *strSaxResult; //保存所有解析结果
@property(nonatomic,strong)NSMutableString *strTmpSax ; //保存临时结果

@end

@implementation ViewController

@synthesize btn,text,xlmParser,strSaxResult,strTmpSax;

#pragma mark - 窗口管理的方法
- (void)viewDidLoad
{
    [super viewDidLoad];
	//实现窗口中的两个组件
    //创建按钮及样式
    btn = [[UIButton alloc]initWithFrame:CGRectMake(38.0f, 50.0f, 250.0f, 30.0f)];
    [btn setTitle:@"请求" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor greenColor]];
    
    //创建 文本区域 组件
    text = [[UITextView alloc]initWithFrame:CGRectMake(38.0f, 90.0f, 250.0f, 350.0f)];
    text.text = @"";   //清空文本内容
    
    //给按钮添加操作事件
    //参数1 表示 参数2所选择的方法在 当前对象中查找
    //参数2 表示 按钮按下后，调用的方法
    //参数3 表示 按钮如何操作，可以触发该事件
    [btn addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
    
    //把按钮，添加到当前视图中
    [self.view addSubview:btn];
    [self.view addSubview:text];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 按钮控制的方法
-(void)buttonPress:(UIButton *)button
{
    NSLog(@"点击一次按钮.........");
}


#pragma mark -  DOM 方式,解析XML的方法
-(void)xmlParser
{
    //开始解析
    //1 读入 xml 文件，转换为 NSData 类型
    NSString *path =[[NSBundle mainBundle]pathForResource:@"demo" ofType:@"xml"];
    //2 把绑定路径文件中的内容全部读取出来，组成字符串
    NSString *docXML =[NSString stringWithContentsOfFile:path];
    //3 定义 XML 解析器对象
    //GDataXMLParser 是 Google 公司开发的专门用于在 ios 中解析xml 的工具
    //在 2008 年前，Google 和 Apple 是蜜月关系。在 之后，两个公司关系闹僵
    //GDataXMLParser 不再更新了。
    
    
}








@end
