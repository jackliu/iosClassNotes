//
//  MyHeader.h
//  cProject
//
//  Created by liu on 13-9-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#ifndef cProject_MyHeader_h
#define cProject_MyHeader_h


//定义常用的宏
//结果正确
#define OK  1
//结果错误
#define ERROR -1
//内存溢出
#define OverFlow -2

//定义后台管理需要使用的属性和方法
//定义一个保存员工信息的结构体
//定义一个结构体数组，保存多个员工的信息
//设计一个链表，动态保存增加的员工信息
typedef struct emp{
    char name[20];
    char password[6];
    struct emp *next;
}Employee;


//定义了整个链表 (用第一个节点代表整个链表)
//此时定义链表，但是该链表在内存中不存在
typedef Employee *LinkList;
//链表的首地址
LinkList head;


//初始化，链表
void init_List(LinkList  *head);
//插入
int insert_first(LinkList head,char name[],char pwd[]);
//浏览
void print_List(LinkList  head);
//查询
void find_List(LinkList head,char *name);




#endif
