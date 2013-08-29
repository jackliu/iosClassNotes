//
//  day17.c
//  cCodeDay17
//
//  Created by liu on 13-8-29.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>


//字符串所占内存长度的练习
void function1(){
    printf("练习一，字符串类型 \n");
    char  str[] = "abc";
    printf("abc 在内存中占的单元格数目为 %ld \n",sizeof(str));
}


void function2(){
    printf("练习二，if else 判断 \n");
    //招收程序员，年龄 大于 20 ，小于 40
    printf("请输入程序员年龄 \n");
    int age;
    scanf("%d",&age);
    if(age >=20 &&age <=40){
        printf(">>>>>招收");
    }else{
        printf(">>>>>不招收");
    }
}



//if else 嵌套使用，输入一个日期数字(1-7)，判断是星期几
void function3(){
    printf("练习三，if else 嵌套 \n");
    printf("请输入星期几 \n");
    int day;
    scanf("%d",&day);
    //输入 1 ，打印星期天
    if (day == 1) {
        printf("星期天 \n");
    }
    //输入 2 ，打印星期一
    if (day == 2) {
        printf("星期一 \n");
    }
    //输入 3 ，打印星期二
    if (day == 3) {
        printf("星期二 \n");
    }
    //输入 4 ，打印星期三
    if (day == 4) {
        printf("星期三 \n");
    }
    //输入 5 ，打印星期四
    if (day == 5) {
        printf("星期四 \n");
    }
    //输入 6 ，打印星期五
    if (day == 6) {
        printf("星期五 \n");
    }
    //输入 7 ，打印星期六
    if (day == 7) {
        printf("星期六 \n");
    }
    
    if (day <1 && day >7) {
        printf("请输入 1-7 之间的数字 \n");
    }
}



//if else 适合用于二选一的判断
//如果多选一，使用 switch case
void function4()
{
    printf("练习四，switch  case 判断 \n");
    printf("请输入星期几 \n");
    int day;
    scanf("%d",&day);
    //switch 中输入的表达式，必须能够返回如下类型的值
    //int 数字   char 字符   enum 枚举
    switch (day) {
        case 1:
            printf("星期天 \n");
            break;
        case 2:
            printf("星期一 \n");
            break;
        case 3:
            printf("星期二 \n");
            break;
        case 4:
            printf("星期三 \n");
            break;
        case 5:
            printf("星期四 \n");
            break;
        case 6:
            printf("星期五 \n");
            break;
        case 7:
            printf("星期六 \n");
            break;
        default:
            printf("请输入 1-7 之间的整数 \n");
            break;
    }
}



//根据人的年龄，判断幼儿、少年、青年、中年、老年
void function5()
{
    printf("请输入一个合理的年龄 \n");
    int age ;
    scanf("%d",&age);
    int lev ;
    if (age>=0 && age<=12) {
        lev =0;
    }
    if (age >12 && age<=18) {
        lev = 1;
    }
    if (age >18 && age<=30) {
        lev = 2;
    }
    if (age >30 && age<=50) {
        lev = 3;
    }
    if (age >50 && age<=80) {
        lev = 4;
    }
    //用switch  case 控制打印
    switch (lev) {
        case 0:
            printf("幼儿 \n");
            break;
        case 1:
            printf("少年 \n");
            break;
        case 2:
            printf("青年 \n");
            break;
        case 3:
            printf("中年 \n");
            break;
        case 4:
            printf("老年 \n");
            break;
        default:
            printf("请检查年龄，看是否符合人类的标准 \n");
            break;
    }
}
