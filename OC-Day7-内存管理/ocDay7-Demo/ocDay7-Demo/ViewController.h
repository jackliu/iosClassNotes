//
//  ViewController.h
//  ocDay7-Demo
//
//  Created by liu on 13-10-14.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //在 {} 声明的实际都是--变量
    
    //在界面上添加按钮，可以作为一个类的属性
    //变量一:有 getter/setter 方法的叫"属性"
    //属性 在 OC2.0 中，可以不用声明，直接写 getter/setter
    //UIButton *button1;
    //UIButton *button2;
    
    //变量二:没有 getter/setter 方法的叫"成员变量"
    NSString *name;
}

//给属性添加 Getter/Setter 方法
@property(nonatomic,retain)UIButton *button1;
@property(nonatomic,retain)UIButton *button2;

@end





