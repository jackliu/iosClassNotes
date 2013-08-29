//
//  main.c
//  cCodeDay18
//
//  Created by liu on 13-8-29.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include "myarray.h"
#include "homework.h"

int main(int argc, const char * argv[])
{
    //运行自定义的函数
    //CreateArray();
    //InitArray();
   
    
    int arr[4][6];    //{{},{},{},{},{},{}};
    
    while (3>2) {
        int type;
        printf("(0)输入 0 ，程序停止 \n");
        printf("(1)按学号查所有考试的成绩\n");
        printf("(2)按考试编号查所有学员成绩\n");
        printf("(3)按学号和考试号查询成绩 \n");
        printf("(4)请输入每次的成绩 \n");
        
        
        scanf("%d",&type);
        
        switch (type) {
            case 0:
                exit(-1);
            case 1:
                
                break;
            case 2:
                
                break;
            case 3:
                
                break;
            case 4:
                printf("请输入一次考试 中每个人的成绩 \n");
                for (int i=1; i<7; i++) {
                    printf("第 %d 次考试 中，每个人成绩如下：\n",i);
                    for (int j=1; j<5;j++) {
                        printf("第 %d 个人的成绩为 \n",j);
                        int ach = 0.0;
                        scanf("%d",&ach);
                        //存入数组中
                        arr[j-1][i-1]=ach;
                    }
                }
                
                break;
            default:
                printf("输入选项错误，请重新运行程序 \n");
                break;
        }
    }
    
    
    return 0;
}





