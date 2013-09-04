//
//  work.c
//  cCodeDay23
//
//  Created by liu on 13-9-4.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

//求和
int getSum(int _arr[],int _length)
{
    int sum=0;
    for (int i=0; i<_length; i++) {
        sum += _arr[i];
    }
    return sum;
}

//求平均分的函数
int getAvg(int _arr[],int _length)
{
    int sum = getSum(_arr, _length);
    return sum/_length;
}


//解决第一个问题的函数
int work1(int _arr[],int _len)
{
    return getAvg(_arr, _len);
}









