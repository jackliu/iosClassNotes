//
//  Queue.h
//  c_code
//
//  Created by liu on 13-4-11.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#ifndef c_code_Queue_h
#define c_code_Queue_h

//定义线性队列的最大长度
#define QueueSize 100

typedef char  DataType;

typedef struct
{
    int nFront;    //队头
    int nRear;     //队尾
    //下面与顺序表意义一样
    int nCount;    //当前队列中数据个数
    DataType data[QueueSize];
}CirQueue;

//定义好队列相关方法
//1 初始化方法
void InitQueue(CirQueue * _pQueue);

//2 判断队列是否为空，防止出现“下溢”现象
int QueueEmpty(CirQueue * _pQueue);

//3 判断队列是否装满，判断是否出现“真上溢”错误
int QueueFull(CirQueue * _pQueue);

//4 入队，只能从队尾插入
void EnQueue(CirQueue * _pQueue,DataType x);

//5 出队，只能从队头删除
DataType DeQueue(CirQueue * _pQueue);

//6 取队列中队头的数据
DataType QueueFront(CirQueue * _pQueue);


#endif
