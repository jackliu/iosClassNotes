//
//  Queue.c
//  c_code
//
//  Created by liu on 13-4-11.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include "Queue.h"

//1 初始化方法
void InitQueue(CirQueue * _pQueue)
{
    //数组中所有元素初始化为 0
    for (int i=0; i<QueueSize; i++) {
        _pQueue->data[i] = 0;
    }
    //队列中其他属性初始化为 0
    _pQueue->nFront = 0;
    _pQueue->nRear = 0;
    _pQueue->nCount = 0;
}

//2 判断队列是否为空，防止出现“下溢”现象
int QueueEmpty(CirQueue * _pQueue)
{
    return _pQueue->nCount ==0;
}

//3 判断队列是否装满，判断是否出现“真上溢”错误
int QueueFull(CirQueue * _pQueue)
{
    return _pQueue->nCount == QueueSize;
}

//4 入队，只能从队尾插入
void EnQueue(CirQueue * _pQueue,DataType x)
{
    if (QueueFull(_pQueue)) {
        printf("队列已经装满，真溢出 \n");
        return;
    }
    
    _pQueue->nCount++;
    //只能在队尾插入值
    _pQueue->data[_pQueue->nRear] = x;
    //计算新的队尾的位置
    _pQueue->nRear = (_pQueue->nRear+1)%QueueSize;
}

//5 出队，只能从队头取出
DataType DeQueue(CirQueue * _pQueue)
{
    if (QueueEmpty(_pQueue)) {
        printf("队列为空，下溢 \n");
        return -1;
    }
    DataType temp;
    //只能从队头取出数据
    temp = _pQueue->data[_pQueue->nFront];
    _pQueue->nCount--;
    _pQueue->nFront = (_pQueue->nFront+1)%QueueSize;
    return temp;
}

//6 取队列中队头的数据，但是不让数据出队
DataType QueueFront(CirQueue * _pQueue)
{
    if (QueueEmpty(_pQueue)) {
        printf("队列为空，下溢 \n");
        return -1;
    }
    
    return _pQueue->data[_pQueue->nFront];
}




