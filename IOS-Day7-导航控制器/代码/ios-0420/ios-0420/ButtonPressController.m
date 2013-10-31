//
//  ButtonPressController.m
//  ios-0420
//
//  Created by liu on 13-4-20.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "ButtonPressController.h"

@interface ButtonPressController ()

@end

@implementation ButtonPressController

//RootViewController 视图中，第一个按钮的事件处理
-(void)pushView:(UIButton *)button
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Title" message:@"ButtonPress" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}








@end
