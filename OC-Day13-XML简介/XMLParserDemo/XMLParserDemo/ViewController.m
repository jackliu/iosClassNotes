//
//  ViewController.m
//  XMLParserDemo
//
//  Created by shangdejigou on 13-10-22.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

//匿名类别
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
    /*
    //点击按钮，解析 XML
    //1 从当前工程文件夹中，得到 xml 文档 的路径
    NSString *path = [[NSBundle mainBundle]pathForResource:@"demo" ofType:@"xml"];
    //2 用文件处理类读取 文件中的内容
    NSFileHandle *file = [NSFileHandle fileHandleForReadingAtPath:path];
    NSData *data = [file readDataToEndOfFile];
    [file closeFile];
    //3 定义一个 xml 解析器对象
    xlmParser = [[NSXMLParser alloc]initWithData:data];
    
    //4 给解析器指定结果过得的 代理对象
    [xlmParser setDelegate:self];
    //5 开始解析
    [xlmParser parse];
    */
    
    [self connectToURL];
}


#pragma mark - 自定义的方法
-(void)connectToURL
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
        NSLog(@"HTTP 响应错误，状态码为 %d:",httpResponse.statusCode);
    } else {
        //响应内容的类型检查
        //MIME : text/html  text/css  text/xml  application/pdf
        contentTypeHeader = [httpResponse MIMEType];
        if (contentTypeHeader == nil) {
            NSLog(@"没有响应类型");
        } else if ( ! [contentTypeHeader isEqual:@"text/xml"]) {
            NSLog(@"不支持给类型的文件");
        } else {
            //响应状态码，响应内容类型检查完毕，提示 响应成功
            NSLog(@"响应成功");
        }
    }
    
}

//2 响应中
- (void)connection:(NSURLConnection *)theConnection didReceiveData:(NSData *)data
{
    NSLog(@"2 数据接收成功");
    //用 XMl 解析 请求得到的 xml 内容
    //3 定义一个 xml 解析器对象
    xlmParser = [[NSXMLParser alloc]initWithData:data];
    
    //4 给解析器指定结果过得的 代理对象
    [xlmParser setDelegate:self];
    //5 开始解析
    [xlmParser parse];
    /*
    //把 NSData 类型转换为 NSString 类型
    NSString *str = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"服务器返回的响应数据为 ");
    NSLog(@"%@",str);
     */
    //把响应内容，添加到 视图界面中
    text.text = [strSaxResult description];
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

#pragma mark - NSXMLParser(SAX)解析XML的方法
//1 通知解析器，整个 XML 文档 开始解析
-(void)parserDidStartDocument:(NSXMLParser *)parser
{
    NSLog(@"-------parserDidStartDocument");
    NSLog(@"-------开始解析 XML 文档");
    strSaxResult = [[NSMutableString alloc]init];
}

//<name>iphone5C</name>
//<iphone size="16G">iphone5C</iphone>

//2 解析 xml 的 开始标签 <name>    <iphone>
-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    NSLog(@"-------didStartElement");
    NSLog(@"-------开始标签 %@ ",elementName);
    if ([@"size" isEqualToString:elementName] || [@"price" isEqualToString:elementName]) {
        [strSaxResult appendString:elementName];
        [strSaxResult appendString:@":"];
    }
}

//3 解析 xml 的标签内容  iphone5C
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    //string = iphone5C
    NSLog(@"-------foundCharacters");
    NSLog(@"-------标签内容 %@ ",string);
    [strSaxResult appendString:string];
}

//4 解析器找到带属性的标签中的某个属性    <iphone  size="16G">
-(void)parser:(NSXMLParser *)parser foundAttributeDeclarationWithName:(NSString *)attributeName forElement:(NSString *)elementName type:(NSString *)type defaultValue:(NSString *)defaultValue
{
    //size =  16G
    NSLog(@"-------foundAttributeDeclarationWithName");
    NSLog(@"-------标签属性");
}


//5  返回标签的回调函数，解析 结束标签  </name>   </iphone>
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    NSLog(@"-------didEndElement");
    NSLog(@"-------结束标签 %@ ",elementName);
}


//6  整个 XML 文档解析结束
-(void)parserDidEndDocument:(NSXMLParser *)parser
{
    NSLog(@"-------parserDidEndDocument");
    NSLog(@"-------xml文档解析结束");
    NSLog(@"%@",[strSaxResult description]);
}



@end







