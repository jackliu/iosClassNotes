//
//  MessageSubject.h
//  ObserverDemo
//
//  Created by shangdejigou on 13-10-27.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"
#import "Observer.h"

@interface MessageSubject : NSObject <Subject>

//两个属性
//1 保存多个观察者列表的 集合对象
@property(nonatomic,strong)NSMutableArray *observers;
//2 保存主题更新的 内容
@property(nonatomic,retain)NSString *message;
//要更新多个信息，定义多个属性
@property(nonatomic,assign)int degree;


//状态改变，通知所有观察者
//-(void)stateChanged:(NSString *)msg andDegree:(int)deg;
-(void)stateChanged:(NSString *)msg;


@end






