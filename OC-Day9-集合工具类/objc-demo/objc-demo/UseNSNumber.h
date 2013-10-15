//
//  UseNSNumber.h
//  objc-demo
//
//  Created by liu on 13-4-26.
//  Copyright (c) 2013年 liu. All rights reserved.
//  练习对  NSNumber 工具的使用 

#import <Foundation/Foundation.h>

@interface UseNSNumber : NSObject

//创建一个数字对象，并得到对象中的数字
-(void)createNumber;
-(void)initNumber;

//把数字转化为字符串   200  -->  "200"
-(void)numToString;

//比较两个数字对象
-(void)equalNumber;   //返回YES NO
-(void)comparNumber;  //返回 枚举值  >    <   ==

//使用格式化数字类，创建特殊的数字类型
-(void)createFormatNum;



@end




