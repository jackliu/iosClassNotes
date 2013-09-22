//
//  SquStack.c
//  cCodeDay34
//
//  Created by liu on 13-9-22.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

#include "SquStack.h"

//初始化一个栈，清空栈中所有值和 top 的位置
SeqStack * initStack(SeqStack *s)
{
    s = (SeqStack *)malloc(sizeof(DataType)*StackSize);
    //指定初始栈顶的位置
    //数组实现栈，下标从 0 开始，-1紧挨着0的一个值
    s->top = -1;
    return s;
}

//判断栈是否为空，pop 前调用
int stackEmpty(SeqStack *s)
{
    return s->top == -1;
}

//判断栈是否已经加满， push 前调用
int stackFull(SeqStack *s)
{
    return s->top == StackSize-1;
}

//每次压入数据，作为栈顶
void push(SeqStack *s ,DataType data)
{
    if(s->top== 100)
    {
        printf("栈内数据已满，不能压入 \n");
        return;
    }
    //1 先往上移动栈顶
    //s->top++;
    s->data[++(s->top)] = data;
}

//每次弹出数据，从栈顶取，取完栈顶下移
DataType pop(SeqStack *s)
{
    if (stackEmpty(s)) {
        printf("栈内为空，无法取值 \n");
        return -1;
    }
    /*
    DataType dt = s->data[s->top]; //从栈顶取值
    s->top--;   //下移栈顶位置 ，等价与删除该数据
    return dt;  //返回取出的数据
    */
    return s->data[s->top--];
}

//查看栈顶元素
DataType getTop(SeqStack *s)
{
    if (stackEmpty(s)) {
        printf("栈中目前没有数据可看  \n");
        return 0;
    }
    
    return s->data[s->top];
}


