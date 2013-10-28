//
//  MessageObserver.h
//  ObserverDemo
//
//  Created by shangdejigou on 13-10-28.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
#import "MessageSubject.h"

@interface MessageObserver : NSObject<Observer>

//主题
@property(nonatomic,retain)MessageSubject *subject;
//从主题传过来的消息
@property(nonatomic,retain)NSString *message;

-(id)initWithSubject:(id) sub;

@end






