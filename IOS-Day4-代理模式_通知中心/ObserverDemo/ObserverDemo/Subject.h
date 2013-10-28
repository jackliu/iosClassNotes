//
//  Subject.h
//  ObserverDemo
//
//  Created by shangdejigou on 13-10-27.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//  规定了所有被观察的  主题  应该提供的方法 

#import <Foundation/Foundation.h>
#import "Observer.h"

@protocol Subject <NSObject>

//注册一个观察者
-(void)registerObserver:(id) ob;

//删除一个观察者
-(void)removeObserver:(id) ob;

//通知所有观察者更新
-(void)notifyObservers;

@end








