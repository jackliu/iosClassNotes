//
//  EmployeeView.h
//  cProject
//
//  Created by liu on 13-9-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//  后台员工管理界面

#ifndef cProject_EmployeeView_h
#define cProject_EmployeeView_h

//定义后台管理需要使用的属性和方法
//定义一个保存员工信息的结构体
typedef struct{
    char name[20];
    char password[6];
    
}Employee;

//定义一个结构体数组，保存多个员工的信息
//设计一个链表，动态保存增加的员工信息



//0 打印后台管理主界面
void printEmployeeView();

//1 添加员工界面
void printAddEmployee();

//2 浏览员工界面
void printFindAllEmployee();

//3 查询员工界面
void printSearchEmployee();





#endif
