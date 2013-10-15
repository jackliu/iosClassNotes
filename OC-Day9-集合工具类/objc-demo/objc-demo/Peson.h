//
//  Peson.h
//  objc-demo
//
//  Created by liu on 13-4-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

//父类，也叫基础类--基类

//继承的语法: @interface  子类名 : 父类名
@interface Peson : NSObject

@property(nonatomic,retain) NSString *name;
@property(nonatomic,assign) int age;
@property(nonatomic,retain) NSString *sex;
@property(nonatomic,retain) NSString *address;

//初始化函数
-(id)init;

-(id)initWithName:(NSString *) _name
                andAge:(int) _age
                andSex:(NSString *)_sex
            andAddress:(NSString *) _address;


@end







