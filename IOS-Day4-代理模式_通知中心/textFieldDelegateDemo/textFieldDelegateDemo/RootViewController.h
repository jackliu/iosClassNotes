//
//  RootViewController.h
//  textFieldDelegateDemo
//
//  Created by shangdejigou on 13-10-28.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MAXLENGTH 6

//当前视图控制器中使用了 文本框，如果想对文本框做更多操作
//按照文本框的协议进行，遵守这个协议的类，被称为 文本框的代理对象
//代理一般定成协议，谁实现协议，谁就是代理人
//在 ios 中，都是控制器作为代理人
@interface RootViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)textFieldPress:(UITextField *)sender;


@end










