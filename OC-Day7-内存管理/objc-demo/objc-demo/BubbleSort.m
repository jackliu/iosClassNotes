//
//  BubbleSort.m
//  objc-demo
//
//  Created by liu on 13-4-19.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

#pragma mark -
#pragma mark 定义函数
//定义给数组 arr[] 赋值的函数，初始化函数
-(void)initArr
{
    
    arr[0]=12;
    arr[1]=22;
    arr[2]=42;
    arr[3]=54;
    arr[4]=20;
    //最多排列 n*(n-1)/2 = 10
    //
    /*
    for (int i = 0; i<10; i++) {
        arr[i] = 20+i;
    }
     */
}

//按照正常顺序打印数组中的值
-(void)printArr
{
    for (int i=0; i<10; i++) {
        NSLog(@"arr[%d] = %d",i,arr[i]);
    }
}

//对数组中元素进行排序
-(void)sortArr
{
    //i  j  两个索引
    int i=0;
    int j=0;
    //交换数据时，临时存放数据的变量
    int temp=0;
    
    for (i=0; i<ARR_SIZE; i++) {
        NSLog(@"------------------->i = %d",i);
        for (j=0; j<ARR_SIZE-1; j++) {
            NSLog(@"===>j = %d",j);
            NSLog(@"交换前");
            NSLog(@"arr[%d] = %d",j,arr[j]);
            NSLog(@"arr[%d] = %d",j+1,arr[j+1]);
            
            //取值，判断，交换
            if(arr[j] > arr[j+1])
            {
                temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
            NSLog(@"交换后");
            NSLog(@"arr[%d] = %d",j,arr[j]);
            NSLog(@"arr[%d] = %d",j+1,arr[j+1]);
            
        }
        
    }
}

@end






