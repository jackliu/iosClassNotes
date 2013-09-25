//
//  EmployeeView.c
//  cProject
//
//  Created by liu on 13-9-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

#include "EmployeeView.h"

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
    char password[6];
    
    printf("请输入员工的用户名:\n");
    scanf("%s",name);
    printf("请输入员工的密码 : \n");
    scanf("%s",password);
    
    //保存员工的信息???
    if (name!=NULL) {
        for (int i=0; i<20;i++) {
            printf("%c",name[i]);
        }
    }
    
}

//2 浏览员工界面
void printFindAllEmployee()
{

}

//3 查询员工界面
void printSearchEmployee()
{

}






