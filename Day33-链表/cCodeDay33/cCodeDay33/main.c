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

//求出链表

//查链表中数据的个数
/*
 --------------    --------    ---------
 |NULL|0x87def |-->| a |   |-->|  a |   |-->......
 --------------    ---------   ----------
 head = 0x223344    0x87def
 
 1 得到首节点，判断是否为空
 2 如果链表不为空，取出 data 数据，与 x 比较 data == x
   如果相等，中止程序  break;
   如果不相等 ,数据不再第一个节点中,找到下一个节点
 3 重复步骤 2
   循环判断和查找
 
 只能找到第一个匹配的元素
 
 */
//问 x 是否在 LinkList 中
void find_List(LinkList head,DataType x)
{
    ListNode *p;  //临时的节点
    p = head;     //得到第一个节点
    //判断节点是否存在
    while (p != NULL) {
        if (p->data ==x) {
            printf("值 x = %d 在链表中存在 \n",x);
            break;
        }
        //继续得到下一个节点
        p = p->next;
    }
}




//删除链表中某个数据
/*
 
         ------------------------------
         |                            \|/
 --------------    ------------     ---------
 |NULL|0x66ccaa|   | a | NULL  |   |  b |   |-->......
 --------------    ------------     ----------
 head = 0x223344    0x88ddee       0x66ccaa
                    head
 1 判断链表中是否有  x  ;
 2 如果 x 存在，找 x 在链表中的位置
 3 定义两个指针：前指针  后指针
 4 把当前元素中的 后指针，值改为 NULL
   把当前元素前一个元素的指针，值改为 后一个元素的地址
   
   free(p);
   p= NULL;
 
 */

int delete_List(LinkList head,DataType x)
{
    return OK;
}



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


/*
    //使用最多的
    //先判断，满足条件循环
    while(条件[逻辑运算表达式])
    {
        //循环的内容
    }
 
 
 
    //先执行，后判断
    do{
       //循环的内容
 
    }while(条件)
 
 
 
    //二选一
    if(条件)
    {
        //条件满足，执行这里的代码
 
    }
    else
    {
        //条件不满足，执行这里的代码
    }
 
 
    //多选一
    switch(整数)
    {
        case 1:
            //情况一，执行代码
            break;
        case 2:
            //情况二，执行代码
            break;
        .....
        default:
            //所有  case 都不匹配
            //默认情况，执行代码    
    }
 
 
 */























