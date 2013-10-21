//
//  NetConnectionDemo.m
//  ocDay12-Demo
//
//  Created by liu on 13-10-18.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "NetConnectionDemo.h"

@implementation NetConnectionDemo

//查询全国的 移动电话城市 编号
-(void)demo1
{
    //1 得到 NSURL 对象
    NSURL *url = [NSURL URLWithString:@"http://webservice.webxml.com.cn/WebServices/MobileCodeWS.asmx/getDatabaseInfo"];
    //2 建立 URL 对应的请求对象
    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:20.0];
    //3 建立 网络连接对象，用于发出 请求
    //网络请求发出的时候遵守的顺序：
    //(1)域名解析
    //(2)建立连接
    //(3)发送请求
    //(4)等待响应
    //(5)接收数据
    NSURLConnection *conn = [[NSURLConnection alloc]initWithRequest:request delegate:self];
    if (conn) {
        NSLog(@"连接成功  %@",conn);
        [conn start];
    }else
    {
        NSLog(@"连接失败");
    }
    
}

#pragma mark - Connection 协议
//1 建立连接的方法，接收请求数据
- (void)connection:(NSURLConnection *)theConnection didReceiveResponse:(NSURLResponse *)response
{
    NSLog(@"1 服务器开始进行数据响应");
}

//2 当从 NSURLConnection 对象中接收数据时，自动调用该方法
- (void)connection:(NSURLConnection *)theConnection didReceiveData:(NSData *)data
{
    NSLog(@"2 数据接收成功");
    //把 NSData 类型转换为 NSString 类型
    NSString *str = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"服务器返回的响应数据为 ");
    NSLog(@"%@",str);
}

//3 当 NSURLConnection 完成数据接收时，自动调用该方法
- (void)connectionDidFinishLoading:(NSURLConnection *)theConnection
{
    NSLog(@"3 数据接收完成");
}

//4 当 NSURLConnection 接收失败，自动调用该方法
- (void)connection:(NSURLConnection *)theConnection didFailWithError:(NSError *)error
{
    NSLog(@"4 接收数据失败");
}



@end







