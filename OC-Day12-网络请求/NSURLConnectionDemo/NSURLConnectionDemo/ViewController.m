//
//  ViewController.m
//  NSURLConnectionDemo
//
//  Created by shangdejigou on 13-10-21.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize btn,text;

#pragma mark - 视图的生命周期方法
- (void)viewDidLoad
{
    [super viewDidLoad];
	//用代码，创建界面的组件
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
    [self connectionToURL];
}



#pragma mark - 发出网络请求的方法
//根据 URL ，向服务器发出请求
-(void)connectionToURL
{
    //1 得到 NSURL 对象
    NSURL *url = [NSURL URLWithString:@"http://localhost/ios/books.xml"];
    //2 建立 URL 对应的请求对象
    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url];
    //3 建立 网络连接对象，用于发出 请求
    //网络请求发出的时候遵守的顺序：
    //(1)域名解析
    //(2)建立连接
    //(3)发送请求
    //(4)等待响应
    //(5)接收数据
    //(6)关闭连接
    NSURLConnection *conn = [[NSURLConnection alloc]initWithRequest:request delegate:self];
    if (conn) {
        NSLog(@"连接成功  %@",conn);
        //手动启动，可以不写
        [conn start];
    }else
    {
        NSLog(@"连接失败");
    }
}
#pragma mark - NSURLConnection 请求发送的生命周期方法
//根据一次网络请求的各个阶段，依次自动被调用的
//1 响应前
- (void)connection:(NSURLConnection *)theConnection didReceiveResponse:(NSURLResponse *)response
{
    NSLog(@"1 服务器开始进行数据响应，对响应的状态，内容类型检查");
    NSHTTPURLResponse * httpResponse;
    NSString *          contentTypeHeader;
    
    //强制类型转换
    httpResponse = (NSHTTPURLResponse *) response;
    
    //只有 HTTPResponse 对象，才可以检查响应状态，在 HTTP 协议中定好的状态码
    //2 开头的状态码，表示响应成功
    if ((httpResponse.statusCode / 100) != 2) {
        //记录，响应失败的状态码
        //[self stopReceiveWithStatus:[NSString stringWithFormat:@"HTTP error %zd", (ssize_t) httpResponse.statusCode]];
        NSLog(@"HTTP 响应错误，状态码为 %d:",httpResponse.statusCode);
    } else {
        //响应内容的类型检查
        
        //MIME : text/html  text/css  text/xml  application/pdf
        contentTypeHeader = [httpResponse MIMEType];
        if (contentTypeHeader == nil) {
            //[self stopReceiveWithStatus:@"No Content-Type!"];
            NSLog(@"没有响应类型");
        } else if ( ! [contentTypeHeader isEqual:@"image/jpeg"]
                   && ! [contentTypeHeader isEqual:@"image/png"]
                   && ! [contentTypeHeader isEqual:@"image/gif"] ) {
            //[self stopReceiveWithStatus:[NSString stringWithFormat:@"Unsupported Content-Type (%@)", contentTypeHeader]];
            NSLog(@"不支持给类型的图片");
        } else {
            //响应状态码，响应内容类型检查完毕，提示 响应成功
            //self.statusLabel.text = @"Response OK.";
            NSLog(@"响应成功");
        }
    }
    
}

//2 响应中
- (void)connection:(NSURLConnection *)theConnection didReceiveData:(NSData *)data
{
    NSLog(@"2 数据接收成功");
    //把 NSData 类型转换为 NSString 类型
    NSString *str = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"服务器返回的响应数据为 ");
    NSLog(@"%@",str);
    //把响应内容，添加到 视图界面中
    text.text = str;
}

//3 响应后
- (void)connectionDidFinishLoading:(NSURLConnection *)theConnection
{
    NSLog(@"3 数据接收完成");
}

//4 响应异常
- (void)connection:(NSURLConnection *)theConnection didFailWithError:(NSError *)error
{
    NSLog(@"4 接收数据失败");
}





@end
