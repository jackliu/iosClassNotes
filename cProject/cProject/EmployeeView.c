//
//  EmployeeView.c
//  cProject
//
//  Created by liu on 13-9-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include "string.h"

#include "EmployeeView.h"
#include "MyHeader.h"




//打印后台管理主界面
void printEmployeeView()
{
    printf("1.添加员工\n");
    printf("2.浏览员工\n");
    printf("3.查询员工\n");
    printf("4.返回主界面\n");
    
    //按照指定的流程控制程序
    printf("请输入操作编号 : \n");
    int num;
    scanf("%d",&num);
    
    //判断用户的操作
    if (num == 1) {
        //进入 添加员工 界面
        printAddEmployee();
    }
}



//1 添加员工界面
void printAddEmployee()
{
    //给数组中所有元素初始化为 \0
    char name[20];
    memset(name, '0', 20);
    char password[6];
    memset(password, '0', 6);
    
    printf("请输入员工的用户名:\n");
    scanf("%s",name);
    printf("请输入员工的密码 : \n");
    scanf("%s",password);
    
    //保存员工的信息???
    /*
    if (name!=NULL) {
        for (int i=0; i<20;i++) {
            if (name[i]!='\0') {
                printf("%c",name[i]);
            }
            if (name[i]==0) {
                break;
            }
        }
    }
    */
    //如果链表头节点中数据为空，说明是新的空链表
    int rs=0;
    if (Head == NULL) {
        init_List(&Head);
        rs = insert_first(Head,name,password);
    }else
    {
        //否则的话，每次往链表，表头节点添加数据
        rs = insert_first(Head,name,password);
        
    }
    
    returnBack(rs);
    
}

//2 浏览员工界面
void printFindAllEmployee()
{

}

//3 查询员工界面
void printSearchEmployee()
{

}


//4 返回后台主界面
void returnBack(int result)
{
    if (result) {
        printf("保持成功，是否返回主界面 y/n ? \n");
        char c ;
        scanf("%c",&c);
        if (c == 'y') {
            printEmployeeView();
        }
        if (c == 'n') {
            printAddEmployee();
        }else
        {
            returnBack(result);
        }
    }

}


