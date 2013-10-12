//
//  BubbleSort.h
//  objc-demo
//
//  Created by liu on 13-4-19.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

#define ARR_SIZE 5

@interface BubbleSort : NSObject
{
    //保存数据的数组
    int arr[ARR_SIZE];
}


#pragma mark -
#pragma mark 定义函数
//定义给数组 arr[] 赋值的函数，初始化函数
//+(void)init;
//[BubbleSort init]  调用
//-(void)init;
-(void)initArr;

//按照正常顺序打印数组中的值
-(void)printArr;

//对数组中元素进行排序
-(void)sortArr;






@end
