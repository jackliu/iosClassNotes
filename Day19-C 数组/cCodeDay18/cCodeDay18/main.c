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
   
    //4 个人，6次考试的成绩
    int arr[3][6];    //{{},{},{},{},{},{}};
    
    //一个永远正确的死循环
    while (3>2) {
        int type;
        printf("(0)输入 0 ，程序停止 \n");
        printf("(1)按学号查所有考试的成绩\n");
        printf("(2)按考试编号查所有学员成绩\n");
        printf("(3)按学号和考试号查询成绩 \n");
        printf("(4)请输入每次的成绩,存入数组 \n");
        
        //等待用户选择不同的编号0-4
        scanf("%d",&type);
        
        //根据用户选择的编号执行不同的具体逻辑代码
        switch (type) {
            case 0:
                printf("程序终止............   \n");
                exit(-1); //终止程序
            case 1:
                printf("请输入学员学号 :\n");
                int stuNum = 0;   //学号
                int sum = 0 ;     //总成绩
                int avg= 0;       //平均成绩
                scanf("%d",&stuNum);
                if (stuNum >0 && stuNum <4) {
                    //得到该学员每次考试的成绩
                    for (int j=0; j<6; j++) {
                        //打印每次的成绩
                        int num = arr[stuNum-1][j];  //当前循环取出的数组中某个数据
                        //总成绩
                        sum =sum+num;
                        
                        printf("学号为 %d 的学员，第 %d 次考试的成绩 %d \n",stuNum,(j+1),num);
                    }
                    
                    //打印平均成绩
                    avg= sum/6;
                    
                    printf("学员编号 %d ,总成绩 %d ,平均成绩为 :%d \n",stuNum,sum,avg);
                    
                    /*
                    arr[stuNum][0];
                    arr[stuNum][1];
                    arr[stuNum][2];
                    arr[stuNum][3];
                    arr[stuNum][4];
                    arr[stuNum][5];
                     */
                }else{
                    printf("输入数字超出可服务范围 \n");
                }
                
                
                break;
            case 2:
                printf("请输入考试编号 :\n");
                int tNum = 0;      //考试编号
                int tSum = 0 ;     //总成绩
                int tAvg= 0;       //平均成绩
                scanf("%d",&tNum);
                if (tNum >0 && tNum <7) {
                    //得到该次考试的每个学员的成绩
                    for (int j=0; j<4; j++) {
                        //打印每次的成绩
                        int num = arr[j][tNum-1];  //当前循环取出的数组中某个数据
                        //总成绩
                        tSum += num;
                        
                        printf("第 %d 次考试,学号为 %d 的学员的成绩 %d \n",tNum,(j+1),num);
                    }
                    
                    //打印平均成绩
                    tAvg= tSum/6;
                    
                    printf("学员编号 %d ,总成绩 %d ,平均成绩为 :%d \n",tNum,tSum,tAvg);
                }else{
                    printf("输入数字超出可服务范围 \n");
                }
                /*
                 arr[0][tNum-1];
                 arr[1][tNum-1];
                 arr[2][tNum-1];
                 */
                
                break;
            case 3:
                printf("请输入学员学号 :\n");
                int ssNum = 0;      //学员编号
                int ttNum = 0;     //考试编号
                
                scanf("%d",&ssNum);
                printf("请输入考试编号 :\n");
                scanf("%d",&ttNum);
                
                
                if ( ssNum>0&& ssNum<4  ) {
                    if (ttNum >0 && ttNum<7) {
                        printf("学员 %d ，第 %d 次考试的成绩为 %d \n",ssNum,ttNum,arr[ssNum-1][ttNum-1]);
                    }else {
                        printf("考试号，超出范围 \n");
                    }
                }else{
                    printf("学号超出范围 \n");
                }
                
                
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
    
    
    
    
    //如果按行连续赋值，第一维长度可以不用给出
    int arrr[][3]={20,30,40,32,35,37,63,12,77};
    
    
    
    
    return 0;
}





