//
//  main.c
//  cCodeDay34
//
//  Created by liu on 13-9-22.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

#include "SquStack.h"

int main(int argc, const char * argv[])
{

    // insert code here...
    printf("Hello, 顺序栈  !\n");
    //1 定义一个栈
    SeqStack *s =NULL;
    //2 初始化栈
    s = initStack(s);
    //3 往栈中压入 3 个数据
    push(s, 10);
    push(s, 20);
    push(s, 30);
    push(s, 40);
    
    pop(s);
    
    //4 查看栈顶元素
    printf("目前栈顶元素为 %d \n",getTop(s));
    
    return 0;
}












