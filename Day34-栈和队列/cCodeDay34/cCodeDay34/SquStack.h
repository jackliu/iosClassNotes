//
//  SquStack.h
//  cCodeDay34
//
//  Created by liu on 13-9-22.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#ifndef cCodeDay34_SquStack_h
#define cCodeDay34_SquStack_h

//宏判断，防止重复定义
//定义一个 使用数组的  顺序栈
#define StackSize 100
typedef int DataType;

//定义一个指定类型、长度的栈结构
typedef struct {
    DataType data[StackSize];
    int top;   //数组的下标索引
}SeqStack;

//初始化一个栈，清空栈中所有值和 top 的位置
SeqStack * initStack(SeqStack *s);

//判断栈是否为空，pop 前调用
int stackEmpty(SeqStack *s);

//判断栈是否已经加满， push 前调用
int stackFull(SeqStack *s);

//每次压入数据，作为栈顶
void push(SeqStack *s ,DataType data);
//每次弹出数据，从栈顶取，取完栈顶下移
DataType pop(SeqStack *s);

//查看栈顶元素
DataType getTop(SeqStack *s);

#endif








