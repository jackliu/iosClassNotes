//
//  main.c
//  cCode16
//
//  Created by liu on 13-8-26.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // insert code here...
    /*
    printf("练习一，查看各种类型在内存中的长度 !\n");
    //把 int 类型在内存中的长度赋值给 整数
    int intSize = sizeof(int);
    printf("int 类型占 %d  字节,二进制 %d 位 \n",intSize,intSize*8);
    //char
    int charSize = sizeof(char);
    printf("char 类型占 %d  字节,二进制 %d 位 \n",charSize,charSize*8);
    //float
    int fSize = sizeof(float);
    printf("float 类型占 %d  字节,二进制 %d 位 \n",fSize,fSize*8);
    //double
    int dSize = sizeof(double);
    printf("double 类型占 %d  字节,二进制 %d 位 \n",dSize,dSize*8);
    */
    
    /*
    printf("练习二：掌握基本输入、输出函数 \n");
    //程序在这一行，停止，等待用户输入
    //输入 a-z  A-Z
    int ch = getchar();
    
    printf("%d \n",ch);
    printf("%c \n",ch);
    //打印  ch 对应的字符或词组
    putchar(ch);
    */
    
    /*
    printf("练习三：运算符  \n");
    int nNum1 = 10;
    int nNum2 = 3;
    
    int nSum1  = nNum1 + nNum2; //13
    int nSum2 = nNum1 + 20;
    //使用上面定义好的类型
    nSum1  = nSum1 - 5;  //13 - 5 = 8
    //nSum1 -= 5;
    
    
    int nA = nNum1 * nNum2;   //30
    int nB = nNum1 / nNum2;   //10 / 3 = ?
    printf("除法运算结果  %d \n",nB);
    int nC = nNum1 % nNum2;   // 10 % 3 = ?
    printf(" %d \n",nC);
    
    double dNum = nNum1 / nNum2;
    printf("double 商: %f",dNum);
     
     
    int a = 1;
    a++;   //运行完毕，进行自增
    ++a;   //运行前，进行自增
    printf("a = %d",a);
     */
    
    /*
    if ( 4 > 2  &&  10 >9) {
        printf("与 整体是真的 \n");
    }else
    {
        printf("与 整体是假的 \n");
    }
    
    if ( 1 > 2  ||  10 >9) {
        printf("或 整体是真的 \n");
    }else
    {
        printf("或 整体是假的 \n ");
    }
    */
    
    printf(" 交换两个变量的值 \n");
    printf("方法一，借用第三变量 \n");
    int a = 5; //0101
    int b = 9; //1001
    
    /*
    int temp = 0;  //第三个变量
    temp = a;
    a = b ;
    b =temp;
    printf("a = %d  , b = %d \n",a,b);
    
    printf("方法二，用异或运算符，两个变量交换值 \n");
    a = a^b;  //a = 0101 ^ 1001 = 1100 =12
    b = a^b;  //b = 1100 ^ 1001 = 0101 =5
    a = a^b;  //a = 1100 ^ 0101 = 1001 =9
    printf("a = %d  , b = %d \n",a,b);
    
    printf("方法二，用+ -运算符，两个变量交换值 \n");
    a = a+b;  //a = 5 + 9 = 14
    b = a-b;  //b = 14 -9 = 5
    a = a-b;  //a = 14 -5 =9
    printf("a = %d  , b = %d \n",a,b);
     
    
    //适合用于只有两种结果的情况下
    int result = (12>3)?30:(100-28);
    printf("%d \n",result);
    */
    
    
    
    
    
    //输入一个年份，判断是否是闰年
    printf("请输入一个年份 \n");
    int year;
    scanf("%d",&year);
    //判断这个数据是否满足闰年的公式
    if ((year %4 == 0 && year%100 !=0) || year %400 == 0) {
        printf(" %d 是闰年 .",year);
    }else{
        printf(" %d 不是闰年 .",year);
    }
    
    return 0;
}

