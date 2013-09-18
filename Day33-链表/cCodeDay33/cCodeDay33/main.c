//
//  main.c
//  cCodeDay33
//
//  Created by liu on 13-9-18.
//  Copyright (c) 2013年 liu. All rights reserved.
//

//标准输入、输出库
#include <stdio.h>
//标准的常用函数库
#include <stdlib.h>


//定义常用的宏
//结果正确
#define OK  1
//结果错误
#define ERROR -1
//内存溢出
#define OverFlow -2

//定义公用数据类型
typedef int DataType;
//定义一个链表的节点
/*
   --------------------------
   | data   |   nextPointer |
   --------------------------
 */
typedef struct node
{
    //存放的数据
    DataType data;
    //指向下一个节点的地址
    struct node *next;
}ListNode;

//定义包含多个节点的 列表
/*
   ------------    --------    ---------
   |a  |0x87def|-->|   |   |-->|    |   |-->......
   ------------    ---------   ----------
   0x223344         0x87def
 
类似与数组  arr={ [0]   ,    [1]  ,      [2]}
 LinkList 中保存的都是地址
 */
//定义了整个链表 (用第一个节点代表整个链表)
//此时定义链表，但是该链表在内存中不存在
typedef ListNode *LinkList;
//链表的首地址
LinkList head;


//初始化，链表
void init_List(LinkList  *head)
{
    head = NULL;
}

//插入值
/*
 链表中，第一节点内存中一般不放值，只放入 NULL
    ----------------           ----------------
    |  x  |0x223344|---------> | NULL  |      |
    ----------------           ----------------
     malloc()分配内存             0x223344
 
 
 1  malloc() 新分配一块内存，新的节点
 2  给节点中 data 赋值
 3  给节点中 next 赋下一个节点的地址
 4  把新创建的节点作为链表的首地址  
 */
// head 是现有链表的第一个节点， x 要插入的数据
int insert_first(LinkList head,DataType x)
{
    //1   malloc() 新分配一块内存，新的节点
    ListNode *p;   //等会要插入到链表中的节点
    p = (ListNode *)malloc(sizeof(ListNode));
    
    //判断，内存是否分配成功
    if (NULL == p) {
        printf("内存没有分配成功  \n");
        return OverFlow;
    }
    
    //2  给节点中 data 赋值
    //3  给节点中 next 赋下一个节点的地址
    p->data = x;
    p->next = head;
    
    //4 把新创建的节点作为链表的首地址
    head = p;
    
    return OK;
}


//打印整个链表中全部的数据
void print_List(LinkList  head)
{
    ListNode *p;  //临时的节点
    p = head;     //得到第一个节点
    //判断节点是否存在
    while (p != NULL) {
        printf("节点值为 %d \n",p->data);
        //继续得到下一个节点
        p = p->next;
    }
    
}

//查链表中数据的个数

//删除链表中某个数据

//使用完毕，释放链表中所有数据


int main(int argc, const char * argv[])
{
    printf("Hello,欢迎使用链表存放数据  \n");
    printf("请输入 数字 0-5 ，选择相应的操作  \n");
    
    int opt = 0;  //选项
    //得到用户输入的值
    scanf("%d",&opt);
    
    while (opt >=0 && opt <=5) {
        //根据用户输入的值进行判断
        //switch() 中只接收整数
        switch (opt) {
            case 0:
                printf("输入了  0 \n");
                break;
            case 1:
                printf("输入了  1 \n");
                break;
            case 2:
                printf("输入了  2 \n");
                break;
            case 3:
                printf("输入了  3 \n");
                break;
            case 4:
                printf("输入了  4 \n");
                break;
            case 5:
                printf("输入了  5 \n");
                break;
            default:
                printf("什么也没有输入，默认情况 \n");
                break;
        }
        
        printf("一次操作结束，请继续选择下一步操作  \n");
        //得到用户输入的值
        scanf("%d",&opt);
    }
    
    
    
    
    
    return 0;
}











