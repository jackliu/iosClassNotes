//
//  ViewController.h
//  iosDay2-Hello2
//
//  Created by shangdejigou on 13-10-24.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

///////////////////////////////
//代码可以给界面发消息，改变界面的内容
//想用代码，修改、获取界面数据，建立 输出口
//IBOutlet 双向输出口，
@property (strong, nonatomic) IBOutlet UITextField *name;

@property (strong, nonatomic) IBOutlet UITextField *pwd;
@property (strong, nonatomic) IBOutlet UILabel *lbl;
//提示信息
@property (strong, nonatomic) IBOutlet UILabel *info;



//////////////////////////////
//IBAction 都是，界面上得事件，调用的 类方法
//界面给代码发请求，让代码执行某些操作
//登录按钮的事件处理
//IBAction IB是界面工具的缩写  Action 事件
//在界面上对组件做操作--点击按钮，
//调用 IBAction 标示的代码
//IBAction 标示的代码，可以与界面连接，界面可以操作该代码
-(IBAction)loginPress:(id)sender;

- (IBAction)registerPress:(id)sender;

//用户名、密码框键盘关闭
- (IBAction)nameField:(UITextField *)sender;

- (IBAction)passwordFile:(UITextField *)sender;
//点击 背景任意地方，关闭键盘
- (IBAction)viewPress:(id)sender;



@end







