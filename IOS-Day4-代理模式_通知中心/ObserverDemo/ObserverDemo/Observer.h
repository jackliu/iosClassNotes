//
//  Observer.h
//  ObserverDemo
//
//  Created by shangdejigou on 13-10-27.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//  多个观察者对象

#import <Foundation/Foundation.h>

@protocol Observer <NSObject>

//当主题 通知后，更新从主题获取的内容
-(void)update:(id) value;

@end










