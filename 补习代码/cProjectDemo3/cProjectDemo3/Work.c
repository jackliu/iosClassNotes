//
//  Work.c
//  cProjectDemo3
//
//  Created by liu on 13-9-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include "Work.h"


//变量作用域：变量能够发挥作用的空间
//全局变量，
int a = 100;

//求数组中最大值
int getMax(int arr[],int length)
{
    //局部变量
    int max=0;
    int i;
    //循环，一次从数组中取一个元素，比较，把较大放入 max
    for (i=0; i<length; i++) {
        if(max<arr[i])
        {
            //交换
            int temp=0;
            temp = max;
            max = arr[i];
            arr[i] = temp;
        }
    }
    
    printf("a = %d \n",a);
    
    for (int j=0; j<10; j++) {
        //不能调用另外一个范围中定义的局部变量
        //temp =10;
    }
    
    return max;
}

//求数组中最小值
int getMin(int arr[],int length)
{
    int min=0;
    int i;
    //循环，一次从数组中取一个元素，比较，把较大放入 max
    for (i=0; i<length; i++) {
        if(min>arr[i])
        {
            //交换
            int temp=0;
            temp = min;
            min = arr[i];
            arr[i] = temp;
        }
    }
    
    return min;
}

//求数组中所有元素的和
int getSum(int arr[],int length)
{
    int sum=0;
    int i;
    //循环，一次从数组中取一个元素，比较，把较大放入 max
    for (i=0; i<length; i++) {
        sum += arr[i];
    }
    
    return sum;
}

//求数组中平均值
int getAvg(int arr[],int length)
{
    int avg = 0;
    int sum = getSum(arr, length);
    avg = sum/length;
    return avg;
}







