//
//  day18.c
//  cCodeDay17
//
//  Created by liu on 13-8-29.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>



//求 1+2+3+4+5+6+….+100=?
//第一步   sum = 1+2 = 1+(1+1)
//int a = 1;     a+(a++)
void function11()
{
int a = 0,sum=0;
for (int i=0; i<10; i++) {
    a++;
    sum = sum+a;  // 0+1    (0+1)+2  (0+1+2)+3
    printf("第 %d 次循环,a = %d   ,sum   = %d \n",(i+1),a,sum);
}
printf("sum = %d",sum);
}



 //打印一个 9*9 的九宫格图案
void functiona()
{
 for (int i=0; i<9; i++) {
 printf("*");
 
 for (int j=0; j<9; j++) {
 printf("$");
 
 if (i == j) {
 printf("\n");
 }
 }
 }
}


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
void functionb(){
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
}
 
void functionc()
{
printf("-------------菱形------------\n");
    int sum = 5;  //一半的大小
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
 
}



void functiond()
{
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
 
}



void functione()
{
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