//
//  RunDay12.h
//  objc-demo
//
//  Created by liu on 13-5-2.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RunDay12 : NSObject

//定义属性
@property(nonatomic,retain) NSArray *array;     //数组
@property(nonatomic,retain) NSDictionary *dict; //字典
@property(nonatomic,retain) NSSet *set;         //堆

//长度可变数组
@property(nonatomic,retain) NSMutableArray *marray;
//长度可变字典
@property(nonatomic,retain) NSMutableDictionary *mdict;
//长度可变堆
@property(nonatomic,retain) NSMutableSet *mset;

//定义函数
-(void)run;


-(void)useNSArray;

-(void)sortNSArray;


@end






