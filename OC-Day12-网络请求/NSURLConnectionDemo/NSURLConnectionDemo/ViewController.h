//
//  ViewController.h
//  NSURLConnectionDemo
//
//  Created by shangdejigou on 13-10-21.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//定义界面需要的 两个组件
@property(nonatomic,strong)UIButton *btn;   //按钮组件
@property(nonatomic,strong)UITextView *text; //文本区域组件

//根据 URL ，向服务器发出请求
-(void)connectionToURL;


@end
