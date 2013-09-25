//
//  EmployeeView.h
//  cProject
//
//  Created by liu on 13-9-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//  后台员工管理界面
#include "MyHeader.h"

#ifndef cProject_EmployeeView_h
#define cProject_EmployeeView_h

//定义全局变量---链表
LinkList Head; //头节点
Employee *loca;//当前节点



//0 打印后台管理主界面
void printEmployeeView();

//1 添加员工界面
void printAddEmployee();

//2 浏览员工界面
void printFindAllEmployee();

//3 查询员工界面
void printSearchEmployee();


//4 返回后台主界面
void returnBack(int result);


#endif
