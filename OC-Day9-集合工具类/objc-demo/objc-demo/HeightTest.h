//
//  HeightTest.h
//  objc-demo
//
//  Created by liu on 13-4-27.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

//协议只有一个文件，使用关键字 @protocol
//@protocol 作用
//1  声明一个协议
//2  得到该协议类型的对象
@protocol HeightTest <NSObject>

//协议一般为 *.h 头文件，与普通头文件一样
//只定义，不实现。只能有方法，不能有属性
//协议只是规定，需要实现的功能
-(void)getHeight;

@end











