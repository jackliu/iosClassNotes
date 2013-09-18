//
//  ListNode.c
//  c_code
//
//  Created by liu on 13-4-9.
//  Copyright (c) 2013年 liu. All rights reserved.
//  单链表相关操作 Demo
//  定义的是 ，头节点也能够存储数据的单链表(无专门头节点的单链表)

#include <stdio.h>
#include <stdlib.h>

////////////////////////////////////////////
////单链表相关信息定义
///////////////////////////////////////////
//内存溢出
#define OverFlow -1
//成功
#define OK       0
//失败
#define ERROR    -2

/*
 * 首先定义一个数据类型int的别名ElemType，
 * 增强程序的可移植性，注意typedef和define的区别
 */
typedef int DataType;
/*
 * 紧接着定义链表的节点，其实就是>=1个包含数据
 * 的元素（类型任意）和一个本结构体类型的Next指
 * 针（其值指向链表的下一个节点的地址）
 */
typedef struct node{
    DataType data;
    struct node *next;
}ListNode;
/*
 *定义该整个单链表的指针，也就是链表开始的内存地址
 */
typedef ListNode *LinkList;
//定义操作链表是，使用的临时指针
ListNode *p;
//定义单链表的头节点指针
ListNode *head;
LinkList head;

////////////////////////////////////////////
////单链表相关操作方法
///////////////////////////////////////////
//1 创建一个空表
/*
 * 头节点不存储数据(简单)
 */
void init_LinkList(LinkList *head)
{
    *head = NULL;
}

//2 头部插入一个元素
/*
 * 传入头指针和数据
 */
int insert_First(LinkList *head,DataType x)
{
    ListNode *p;
    //根据 节点的内存长度，分配一个新的内存
    p = (ListNode *)malloc(sizeof(ListNode));
    //如果为空，说明内存不足
    if (p == NULL) {
        return OverFlow;
    }
    //往新创建的内存中，插入值
    p->data = x;
    //设置下一个节点的指针
    p->next = *head;
    //修改新的内存地址为头指针，可以确保每次都插在头部
    *head = p;
    
    return OK;
}

//3 查找指定元素(与数组查找效率差不多)
LinkList get_listNode(LinkList head,DataType x)
{
    LinkList p;
    p = head;
    while (p!=NULL) {
        if (p->data == x) {
            break;
        }
        p = p->next;
    }
    return p;
}

//4 删除节点
/*
 * 头节点是不存储数据的，如果删除头节点是，操作不一样
 */
int delete_LinkList(LinkList *head,DataType x)
{
    //定义两个临时指针，p 指向后一个节点 q指向前一个节点
    ListNode *p,*q;
    p = *head;
    //头节点单独考虑
    if (p->data == x) {
        *head = (*head)->next;
        free(p);
        return OK;
    }else
    {
        q = p;
        p = p->next;
        while (p != NULL) {
            if (p->data == x) {
                q->next = p->next;
                free(p);
                return OK;
            }
            q = p;
            p = p->next;
        }
    }
    return ERROR;
}

//5 遍历链表
//其实就是逐个操作链表，操作可以包括打印每个元素，更改每个元素。
/*
 * 打印每个数据
 * 头节点为空，需要打印空表
 */
void show_LinkList(LinkList head)
{
    LinkList p = head;
    int i = 0;
    printf("-------打印链表------- \n");
    if (p == NULL) {//头节点为空
        printf("空表 \n");
    }
    while (p!=NULL) {
        printf("[%d] : %d \n",i++,p->data);
        p = p->next;
    }
}

/*
 * 6.清空链表
 * 清除到头结点为空的状态，也就是一个空表的状态
 */
void SetNull_LinkList(LinkList *Head_pointer)
{
    LinkList p, q;
    p = *Head_pointer;
    while (p != NULL)
    {
        q = p;
        p = p->next;
        free(q);
    }
}


/*
 * 7.计算链表的长度
 * 计算方法：从Head开始，计算指针不为空的个数
 */
int Length_LinkList(LinkList Head)
{
    LinkList p = Head;
    int sum = 0;
    while(p != NULL)
    {
        sum++;
        p = p->next;
    }
    return sum;
}



////////////////////////////////////////////
////
///////////////////////////////////////////

/*
 *8.调用单链表操作的主函数
 */
int main(void)
{
    
    int i;
    LinkList Head; //头节点
    ListNode *loca;//当前节点
    DataType x;    //当前节点数据
    
    
    Init_LinkList(&Head);
    
    do
    {
        printf("\n");
        printf("1---插入一个元素（Insert）\n");
        printf("2---查询一个元素（Locate）\n");
        printf("3---删除一个元素（Delete）\n");
        printf("4---显示所有元素（Show）\n");
        printf("5---计算表的长度（Length）\n");
        printf("6---退出\n");
        scanf("%d", &i);
        switch (i)
        {
            case 1: printf("请输入要插入的分数：\n");
                scanf("%d", &x);
                if (insert_First(&Head, x) != OK)
                    printf("插入失败\n");
                break;
                
            case 2: printf("请输入要查询的分数\n");
                scanf("%d", &x);
                loca = get_listNode(Head, x);
                if (loca != NULL)
                    printf("查询成功\n");
                else
                    printf("查询失败\n");
                break;
                
            case 3: printf("请输入要删除的分数\n");
                scanf("%d", &x);
                if (delete_LinkList(&Head, x) != OK)
                    printf("删除失败\n");
                else
                    printf("删除成功\n");
                break;
                
            case 4: show_LinkList(Head);
                break;
                
            case 5: printf("表的长度是：%d", Length_LinkList(Head));
                break;
                
            case 6: break;
                
            default:    printf("错误选择！请重选");
                break;
        }
    } while (i != 6);
    
    SetNull_LinkList(&Head);
    printf("链表已清空，程序退出...\n");
    
    return 0;
}









