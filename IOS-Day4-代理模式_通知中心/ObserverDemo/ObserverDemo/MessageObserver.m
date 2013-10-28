//
//  MessageObserver.m
//  ObserverDemo
//
//  Created by shangdejigou on 13-10-28.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "MessageObserver.h"

@implementation MessageObserver

@synthesize subject,message;

-(id)initWithSubject:(id) sub
{
    if (self = [super init]) {
        self.subject = sub;
        //注册成为观察者
        [subject registerObserver:self];
    }
    return  self;
}

-(void)update:(id) value
{
    self.message = value;
    [self display];
}

-(void)display
{
    NSLog(@"当前观察者对象，观察到主题更新了消息 : %@",self.message);
}

@end
