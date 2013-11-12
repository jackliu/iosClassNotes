//
//  ViewController.m
//  JSONDemo
//
//  Created by shangdejigou on 13-11-11.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

//导入 json 解析工具类
#import "JSONKit.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize jsonContent;

- (void)viewDidLoad
{
    [super viewDidLoad];
	//1、加载 JSON 文件
    
    //绑定 json 文件，得到文件路径
    NSString *path=[[NSBundle mainBundle] pathForResource:@"city" ofType:@"json"];
    //按照指定的编码，从 路径中读取 json 内容
    //jsonContent=[[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    //得到二进制的  json 内容
    jsonContent = [NSData dataWithContentsOfFile:path];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTextview:nil];
    [super viewDidUnload];
}

//2、开始解析
- (IBAction)buttonPress:(UIButton *)sender {
    //新建专门的解析对象
    JSONDecoder *jd=[[JSONDecoder alloc] init];
    
    
    //得到整个 json 最外面的 类型
    NSArray *array = [jd objectWithData:jsonContent];
    
    //可变长字符串，连接所有的字符
    NSMutableString *mutStr = [[NSMutableString alloc]initWithCapacity:10];
    
    NSLog(@"------1------- array = %@",array);
    for (NSDictionary *dict in array) {
        NSLog(@"--2-- %@ ",dict);
        //得到所有的 value
        NSString *cid = [dict objectForKey:@"cid"];
        NSString *cname = [dict objectForKey:@"cname"];
        NSLog(@"-3- id=%@ , name=%@ ",cid,cname);
        [mutStr appendFormat:@"编号:%@ , 名称:%@ \n",cid,cname];
    }
    
    //全部循环完毕，把字符串内容输出到 界面 textView 组件中
    self.textview.text = [mutStr description];
    
}


@end






