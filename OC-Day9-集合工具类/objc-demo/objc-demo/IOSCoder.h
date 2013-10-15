//
//  IOSCoder.h
//  objc-demo
//
//  Created by liu on 13-4-28.
//  Copyright (c) 2013年 liu. All rights reserved.
//  协议，规定一个合格的 IOS 程序员必须能够完成的事情 

#import <Foundation/Foundation.h>

@protocol IOSCoder

//协议中规定方法
//协议中规定必须实现的方法   @required 要求，命令
@required
-(void)useObjectiveC;
-(void)useXCode;
-(void)useCocoa;

//协议中规定可以不实现，可以选方法  @optional
@optional
-(void)usePhotoShop;  //会美工
-(void)workOverTime;  //加班
-(void)serveForBoss;  //为老板服务

@end






