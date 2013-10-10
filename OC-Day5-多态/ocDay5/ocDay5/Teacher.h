//
//  Teacher.h
//  ocDay5
//
//  Created by liu on 13-10-10.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Person.h"

@interface Teacher : Person

//知识点二：方法的重写
//在父、子类中
-(void)printMessage;

//知识点六：方法的重载
//在同一个类中，方法名称相同，参数不同的多个方法叫 ---- 重载
-(void)say;
-(void)say:(NSString *)content;
-(void)say:(NSString *)content :(int)time;
//......


@end





