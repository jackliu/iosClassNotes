//
//  MainView.c
//  cProject
//
//  Created by liu on 13-9-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
//导入后台管理界面
#include "EmployeeView.h"


//打印主界面
void printMainView()
{
    printf("===欢迎使用电子安全门——模拟系统=== \n");
    printf("1. 门禁测试\n");
    printf("2.后台管理\n");
    printf("3.帮助\n");
    printf("4.退出\n");
    
    //按照指定的流程控制程序
    printf("请输入操作编号 : \n");
    int num;
    scanf("%d",&num);
    
    //判断用户的操作
    if (num == 2) {
        //进入后台管理界面
        printEmployeeView();
    }
    
    
    
    
    
    
}
