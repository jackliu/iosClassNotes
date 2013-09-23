//
//  Queue.c
//  cCodeDay34
//
//  Created by liu on 13-9-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include "Queue.h"

//初始化队列
CirQueue * InitQueue(CirQueue *q)
{
    //给队列 结构体的 四个属性赋初始值
    q->nCount=0;  //总数
    q->nFront=0;  //队头位置
    q->nRear =0;  //队尾位置
    
    //XCode 会自动完成，但是把下面的代码写出，可一致性更好
    for (int i=0; i<QueueSize-1; i++) {
        q->data[i] = 0;  //ASCII null
    }
    
    return q;
}

//判断队列为空
int QueueEmpty(CirQueue *q)
{
    return q->nCount ==0;
}

//判断队列满
int QueueFull(CirQueue *q)
{
    return q->nCount == QueueSize;
}

//入队
void EnterQueue(CirQueue *q,DataType x)
{
    //判断
    if (QueueFull(q)) {
        printf("队列已满，不能入队  \n");
        return;
    }
    
    q->nCount++;
    q->data[q->nRear] = x;   //往队尾放入新入队的值
    q->nRear = (q->nRear+1)%QueueSize ; //计算出新的队尾值
}

//出队
DataType DeleteQueue(CirQueue *q)
{
    if (QueueEmpty(q)) {
        printf("队列为空，不能出队  \n");
        return  0;
    }
    //出队，固定删除队头的值
    q->nCount--;
    DataType temp = q->data[q->nFront];  //取出队头的值
    q->nFront = (q->nFront+1)%QueueSize; //修改队头的位置
    
    return temp;
}

//遍历队列
void FindAll(CirQueue *q)
{

}

