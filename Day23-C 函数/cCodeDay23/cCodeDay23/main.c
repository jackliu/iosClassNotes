//编译器是从上往下依次读取并运行代码
//如果在上面行中，没有出现过的代码，无法调用
/*
void show(){
    printf("");   //错误，printf() 没有出现过
}
*/


//
//  main.c
//  cCodeDay23
//
//  Created by liu on 13-9-4.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

#include "Demo.h"

#include "work.h"



//一般打开 main.c 文件希望先看到 main()
//main() 一般是改文件中的第一个函数
int main(int argc, const char * argv[])
{
    //show();
    //int aa = add(10, 23);
    /*
     综合练习：
     一个班，有 4  个学员、共学习 5 门课程，要求编程完成如下三个功能：
     (1)求出 第 5 门课程的平均分
     (2)找出平均成绩在 70 分以上的学员
     (3)找出全部课程成绩都在 85 分以上的学员.
     (4)找出有两门以上功课不及格的学员，输出他们的学号和全部课程成绩和平均分 (选做)
     */
    int arr[4][5]={
        {78,82,69,77,90},
        {70,82,54,80,30},
        {82,68,92,70,80},
        {88,85,89,97,90}
    };
    
    while (4>3) {
        printf("请输入 1-4 ，选择不同的操作，输入10 终止  \n");
        int choose =0;
        scanf("%d",&choose);
        int avg = 0;
        int arr5[4];
        int arrwork2[5];  //得到一个人的 5 门成绩
        
        switch (choose) {
            case 1:
                //取出所有人第 5 门课程成绩
                for (int i=0; i<4; i++) {
                    arr5[i]=arr[i][4];
                }
                avg = work1(arr5,4);
                
                printf("第 5 门课程的平均分  %d  \n",avg);
                break;
            case 2:
                for (int i=0; i<4; i++) {
                    //内部一次循环，得到一个人的成绩
                    for (int j=0; j<5; j++) {
                       arrwork2[j]= arr[i][j];
                    }
                    int avg = getAvg(arrwork2, 5);
                    if (avg >=70) {
                        printf("平均成绩在 90 分以上,学员编号是 %d  \n",i+1);
                    }
                }
                break;
            case 3:
                for (int i=0; i<4; i++) {
                    int num = 0;    //对成绩大于 85 分的计数
                    //内部一次循环，得到一个人的成绩
                    for (int j=0; j<5; j++) {
                        //得到一个人的一次成绩
                        int aaa= arr[i][j];
                        if (aaa >= 85) {
                            num++;
                            printf("num = %d \n",num);
                        }
                    }
                    if (num == 5) {
                        printf("该学员每门成绩都大于 85 ，学号为 : %d  \n",(i+1));
                    }
                }
                
                
                break;
            case 4:
                
                break;
            case 10:
                exit(-1);
                break;
                
                
            default:
                break;
        }
        
    }
    
    
    
    
    return 0;
}






