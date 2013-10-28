//
//  MessageSubject.m
//  ObserverDemo
//
//  Created by shangdejigou on 13-10-27.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "MessageSubject.h"
#import "MessageObserver.h"

@implementation MessageSubject

@synthesize observers,message;

//初始化方法，给集合对象分配内存
-(id)init
{
    if (self = [super init]) {
        //准备好存放所有观察者的集合对象
        observers = [[NSMutableArray alloc]init];
    }
    return self;
}

//注册一个观察者，参数是另外一个类的对象，依赖关系
-(void)registerObserver:(id) ob
{
    //来者不拒，把所有的观察者放入集合对象中
    [observers addObject:ob];
}

//删除一个观察者
-(void)removeObserver:(id) ob
{
    if ([observers containsObject:ob]) {
        [observers removeObject:ob];
    }
}

//通知所有观察者，主题更新
-(void)notifyObservers
{
    //遍历当前所有的观察者对象
    for (id ob in observers) {
        MessageObserver *messOb = (MessageObserver *)ob;
        //每个观察者都更新 主题的消息
        [messOb update:[self message]];
    }
}

//自定义方法，状态改变，通知所有观察者
-(void)stateChanged:(NSString *)msg
{
    [self setMessage:msg];
    [self notifyObservers];
}

@end




