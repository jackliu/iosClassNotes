//
//  BubbleSort.c
//  cCodeDay34
//
//  Created by liu on 13-9-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//  冒泡排序算法

#include <stdio.h>

//对指定长度的数组进行排序
void bSort(int arr[],int length)
{
    //控制排序时比较的 位置
    int i=0,j=0;
    //控制顶部位置
    for (i =0; i<length-1; i++) {
        //控制顶部下面所有的元素位置
        for (j=0; j<length-1-i; j++) {
            if (arr[j]>arr[j+1]) {
                //交换两个位置中的数据
                int temp=0;
                temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
    
    for (int i=0; i<length; i++) {
        printf("arr[%d] = %d \n",i,arr[i]);
    }
    
}




//从后往前冒泡
void bubble_sort(int arr[],int  count)
{
    int i;int j;int temp;
    for(i=0;i<count;i++)
    {
        for(j=count-1;j>i;j--)
        {
            if(arr[j]<arr[j-1])
            {
                temp=arr[j];
                arr[j]=arr[j-1];
                arr[j-1]=temp;
            }
        }
    }
}



