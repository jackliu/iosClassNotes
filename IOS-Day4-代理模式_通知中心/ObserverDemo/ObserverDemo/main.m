//
//  main.m
//  ObserverDemo
//
//  Created by shangdejigou on 13-10-27.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MessageSubject.h"
#import "MessageObserver.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //建立一个主题
        MessageSubject *sub = [[MessageSubject alloc]init];
        
        //建立两个观察者
        MessageObserver *ob1 = [[MessageObserver alloc]initWithSubject:sub];
        MessageObserver *ob2 = [[MessageObserver alloc]initWithSubject:sub];
        MessageObserver *ob3 = [[MessageObserver alloc]initWithSubject:sub];
        MessageObserver *ob4 = [[MessageObserver alloc]initWithSubject:sub];
        
        //主题更新内容
        [sub stateChanged:@"第一个消息"];
        //从主题对象中，删除一个观察者
        [sub removeObserver:ob4];
        
        [sub stateChanged:@"第二个消息"];
    }
    return 0;
}

