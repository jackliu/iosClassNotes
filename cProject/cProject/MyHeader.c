//
//  MyHeader.c
//  cProject
//
//  Created by liu on 13-9-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include "string.h"
#include "MyHeader.h"




//初始化，链表
void init_List(LinkList  *head)
{
    head = NULL;
}

//插入
LinkList insert_first(LinkList head,char n[],char pwd[])
{
    //1   malloc() 新分配一块内存，新的节点
    Employee *p;   //等会要插入到链表中的节点
    p = (Employee *)malloc(sizeof(Employee));
    
    //判断，内存是否分配成功
    if (NULL == p) {
        printf("内存没有分配成功  \n");
        return OverFlow;
    }
    
    //2  给节点中 data 赋值
    //3  给节点中 next 赋下一个节点的地址
    strcpy(p->name, n);
    strcpy(p->password, pwd);
    p->next = head;
    
    //4 把新创建的节点作为链表的首地址
    head = p;
    
    return head;
}

//浏览
void print_List(LinkList  head)
{
    Employee *p;  //临时的节点
    p = head;     //得到第一个节点
    //判断节点是否存在
    while (p != NULL) {
        printf("用户名为 %s ，密码为 %s \n",p->name,p->password);
        //继续得到下一个节点
        p = p->next;
    }

}

//查询
void find_List(LinkList head,char *n)
{
    Employee *p;  //临时的节点
    p = head;     //得到第一个节点
    int findResult=0;//判断条件
    //判断节点是否存在
    while (p != NULL) {
        if (strcmp(p->name, n)==0) {
            printf("用户名 %s 存在 \n",n);
            findResult = 1;  //存在，修改条件为 1
            break;
        }
        //继续得到下一个节点
        p = p->next;
    }
    
    //全部找完，都没有找到，提示
    if (!findResult) {
        printf("用户名 %s 不存在 \n",n);
    }
    
    
}



