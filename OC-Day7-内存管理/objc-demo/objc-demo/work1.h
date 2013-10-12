//
//  work1.h
//  objc-demo
//
//  Created by liu on 13-4-17.
//  Copyright (c) 2013年 liu. All rights reserved.

//导入 OC 的基本功能库
#import <Foundation/Foundation.h>

//@ OC 特有的标记
//@interface 表示一个接口，保存相关所有定义内容的地方
// :         表示继承关系
// NSObject  表示父类名称
//@end       表示当前接口结束的地方
@interface work1 : NSObject


//定义一个函数 ，要求通过 work1 的名字调用
+(void)f1;



@end

