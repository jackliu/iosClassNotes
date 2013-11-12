//
//  ViewController.m
//  TestJSon
//
//  Created by  on 12-7-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

//1 导入 JSONKit 框架
#import "JSONKit.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /*
    //创建 JSON 的字符串、数组、对象
    //字符串
    //OC 的字符串对象 str
    NSString *str = @"this is a nsstring";
    //直接调用  [str JSONString] 方法转换为 JSON
    //使用 类别 扩展 NSString 类
    NSString* res = [str JSONString];  
    NSLog(@"JSON 字符串 = %@", res);  
    //res= "this is a nsstring"  
    
    
    //数组
    //自己建立 OC 数组
    NSArray *arr = [[NSArray alloc] initWithObjects:@"One",@"Two",@"Three",nil];
    //通过类别扩展方法，直接转换成  JSON
    res = [arr JSONString];  
    NSLog(@"JSON 数组= %@", [NSString stringWithString: res]);  
    [arr release];  
    //res= ["One","Two","Three"]  
    
    
    //字典类型（对象）
    //创建包含字符串的数组
    NSArray *arr1 = [NSArray arrayWithObjects:@"dog",@"cat",nil];
    //创建包含 数字的数组
    NSArray *arr2 = [NSArray arrayWithObjects:[NSNumber numberWithBool:YES],[NSNumber numberWithInt:30],nil];
    //创建 字典 key/value
    NSDictionary *stu = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"stuName",@"23",@"stuAge",@"1990-01-12",@"birthday",nil]; 
    //创建一个终极复杂的 字典对象
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"toms",@"username",stu,@"stuInfo",arr1,@"pets",arr2,@"other",nil];  
    
    //使用扩展方法，直接转换为 JSON
    res = [dic JSONString];
    NSLog(@"JSON 复杂对象 = %@", [NSString stringWithString: res]);
    */
     
    /* 
     * json格式解码 
     */ 
    JSONDecoder *jd=[[JSONDecoder alloc] init];
    
    //针对NSData数据
    NSString *jsonFile = [[NSBundle mainBundle]pathForResource:@"city" ofType:@"json"];
    NSData *jsonData = [NSData dataWithContentsOfFile:jsonFile];
    
    //NSData *data = [dic JSONData];
    
    //JSON 解析后的字典
    NSDictionary *ret = [jd objectWithData: jsonData];  
    NSLog(@"解析后的字典 %@",ret);
    
    //循环字典
    
    /*
    NSString* cid = [ret objectForKey:@"cid"];
    NSLog(@"城市 id :%@",cid);
    
    NSLog(@"城市 name = %@", [ret objectForKey:@"cname"]);  
    //res= (  
    //  dog,  
    //  cat  
    //)  
    //NSLog(@"res= %@", [[ret objectForKey:@"other"] objectAtIndex:0]);
    //res= 1  
    */
    
    /*
    //针对NSString字符串数据  
    NSString *nstr = [dic JSONString];  
    NSDictionary *ret2 = [jd objectWithUTF8String:(const unsigned char *)[nstr UTF8String] length:(unsigned int)[nstr length]];  
    NSLog(@"res= %d", [[ret2 objectForKey:@"pets"] indexOfObject:@"cat"]);  
    //res= 1  
    NSLog(@"res= %@", [[ret2 objectForKey:@"other"] objectAtIndex:1]);  
    //res= 30  
    */
    
    [jd release];  
     
      
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
