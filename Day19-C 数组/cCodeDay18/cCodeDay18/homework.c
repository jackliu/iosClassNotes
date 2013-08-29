//
//  homework.c
//  cCodeDay18
//
//  Created by liu on 13-8-29.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>


//(1)根据输入的学生学号给出各次考试的成绩 及 平均成绩
void f1()
{


}



//(2)根据输入考试的次数，打印出该次考试中，每个学生的成绩，并给出平均分
void f2();
//(3)根据学号查出学生某次考试成绩
void f3();

//(4)录入考试成绩
void f4()
{
    int arr[4][6];    //{{},{},{},{},{},{}};
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
}







