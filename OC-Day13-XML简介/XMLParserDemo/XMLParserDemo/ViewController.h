//
//  ViewController.h
//  XMLParserDemo
//
//  Created by shangdejigou on 13-10-22.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

//1  实现 xml 解析的协议
@interface ViewController : UIViewController<NSXMLParserDelegate>

//定义界面组件内容
@property(nonatomic,strong)UIButton *btn;
@property(nonatomic,strong)UITextView *text;

//定义连接 服务器的方法
-(void)connectToURL;

@end
