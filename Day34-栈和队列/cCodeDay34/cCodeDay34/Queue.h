//
//  Queue.h
//  cCodeDay34
//
//  Created by liu on 13-9-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#ifndef cCodeDay34_Queue_h
#define cCodeDay34_Queue_h

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


/////////////////////////////////////////
//定义方法操作队列
//初始化队列
CirQueue * InitQueue(CirQueue *q);

//判断队列为空
int QueueEmpty(CirQueue *q);

//判断队列满
int QueueFull(CirQueue *q);

//入队
void EnterQueue(CirQueue *q,DataType x);

//出队
DataType DeleteQueue(CirQueue *q);

//遍历队列
void FindAll(CirQueue *q);



#endif



