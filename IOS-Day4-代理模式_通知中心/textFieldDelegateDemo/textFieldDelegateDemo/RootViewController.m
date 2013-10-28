//
//  RootViewController.m
//  textFieldDelegateDemo
//
//  Created by shangdejigou on 13-10-28.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

@synthesize textField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //需要让界面中的 文本框对象，知道他的代理类是谁
    self.textField.delegate  = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldPress:(UITextField *)sender {
    [sender resignFirstResponder];
}


#pragma mark - UITextField 代理方法的实现
//限制用户输入字符长度，超过长度，自动截取
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([textField.text length] > MAXLENGTH)
    {
        //截取字符串 0-5 之间的字符，赋值到文本框中
        //输入超过 6 位，永远显示前 6 个字符
        textField.text = [textField.text substringToIndex:MAXLENGTH-1];
        return NO;
    }
    return YES;
}







@end






