//
//  main.c
//  cCodeDay17
//
//  Created by liu on 13-8-27.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

//枚举一周的所有天 'Sun'   "Sun"
//隐式定义，按照值的顺序，代表数字 0、1、2、3、4、5、6
enum weekday{Sun,Mon,Tue,Wed,Thu,Fri,Sat};

//定义枚举类型，幼儿、少年、青年、中年、老年
enum agelevel{level1,level2,level3,level4,level5};


int main(int argc, const char * argv[])
{

    /*
    printf("练习一，字符串类型 \n");
    char  str[] = "abc";
    printf("abc 在内存中占的单元格数目为 %ld \n",sizeof(str));
    
    
    
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
    */
     
    //if else 嵌套使用，输入一个日期数字(1-7)，判断是星期几
    /*
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
     */
     
    
    /*
    //if else 适合用于二选一的判断
    //如果多选一，使用 switch case
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
    */
    
    
    /*
    //根据人的年龄，判断幼儿、少年、青年、中年、老年
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
    */
    
    
    //求 1+2+3+4+5+6+….+100=?
    //第一步   sum = 1+2 = 1+(1+1)
    //int a = 1;     a+(a++)
    
    /*
    int a = 0,sum=0;
    for (int i=0; i<10; i++) {
        a++;
        sum = sum+a;  // 0+1    (0+1)+2  (0+1+2)+3
        printf("第 %d 次循环,a = %d   ,sum   = %d \n",(i+1),a,sum);
    }
    printf("sum = %d",sum);
    */
    
    
    /*
    //打印一个 9*9 的九宫格图案
    for (int i=0; i<9; i++) {
        printf("*");
        
        for (int j=0; j<9; j++) {
            printf("$");
            
            if (i == j) {
                printf("\n");
            }
        }
    }
    */
    
    
    //打印一个菱形
    /*
     
     *              1 = 1 * 2 -1
     ***            3 = 2 * 2 -1
     *****          5 = 3 * 2 -1
     *******        7 = 4 * 2 -1
     *********      9 = 5 * 2 -1
     *******
     *****
     ***
     *
     
    */
    
    printf("-------------三角形------------\n");
    int sum = 5;  //一半的大小
    for (int i = 1; i <= sum; i++) {  //行数循环
        for (int j = 1; j <= i * 2 - 1; j++) {  //星号个数循环
            printf("*");
        }
        printf("\n");
    }
    for (int i = sum - 1; i > 0; i--) {//行数循环
        for (int j = 1; j <= i * 2 - 1; j++) {//星号个数循环
            printf("*");
        }
        printf("\n");
    }
    
    /*
     
     
    printf("-------------菱形------------\n");
    //打印上半部分的菱形
    for (int i=0; i<sum; i++) {
        //从左开始打印 空格
        for (int a=0; a<=4-i; a++) {
            printf(" ");
        }
        //接着打印 *
        for (int b=0; b<(2*i+1); b++) {
            printf("*");
        }
        //* 打印完毕，换行
        printf("\n");
    }
    //打印下半部分的菱形
    */
    
    
    
    /*
    printf("练习、打印 9*9 乘法表 \n");
    printf("----------for 循环----------\n");
    //for(初始值;终止值;增长量){循环体}
    //外层循环 outer,循环一次，换一行
    for (int i=1; i<10; i++) {
        //内层循环 inner
        for (int j= 1; j<=i; j++) {
            printf("%d * %d = %d\t",j,i,j*i);
        }
        //if (i == j) {
            //由外层循环控制换行
            printf("\n");
        //}
    }
    
    printf("----------while 循环----------\n");
    //使用 while 循环输出 9*9 乘法表
    //while (true/false) {
        //true ，执行循环体
        //false ，什么都不执行
    //}
    int i = 1;  //循环初始变量
    
    //终止条件
    while (i<10) {
        
        int j = 1;    
        while (j<=i) {
            printf("%d * %d = %d\t",j,i,j*i);
            j++;
        }
        i++;  //在循环内部，手动设置增长量
        printf("\n");
    }
    
    printf("------------while中嵌套for------------\n");
    int a =1;
    while (a <10) {
        for (int b=1; b<=a; b++) {
            printf("%d * %d = %d\t",b,a,b*a);
        }
        a++;
        printf("\n");
    }
    
    printf("------------for中嵌套while-----------\n");
    for (int i=1; i<10; i++) {
        int j=1;
        while (j<=i) {
            printf("%d * %d = %d\t",j,i,j*i);
            j++;
        }
        printf("\n");
    }
    */
    
    
    
    
    printf("-----------程序终止语句 -----------\n");
    for (int i=1; i<=10; i++) {
        //终止语句后面的代码无效
        //break;
        //continue;
        //return 1;   与函数配套使用
        printf("---------------- i = %d \n",i);
        
        if (i%2 == 0) {
            //break;  //整个循环终止，只循环了一次
            continue;
        }
        printf("aaaaaa \n");
    }
    
    
    /*
    outer: for (int i = 1; i < 10; i++) {
        inner: for (int j = 1; j < 10; j++) {
                printf("%d * %d = %d\t",i,j,(i * j));
                if (i == j) {
                    printf("\n");
                    continue outer;  
                }
        }
    }
    */
    
    return 0;
}








