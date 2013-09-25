//
//  StringDemo.c
//  cProjectDemo4
//
//  Created by liu on 13-9-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
//字符串函数
#include "string.h"

#include "StringDemo.h"


void strDemo1()
{
    //字符串创建
    //C 语言中没有专门的字符串类型，OC中有  NSString
    //用字符数组来表示 多个字符形成的串-->"字符串"
    //C 语言中，字符串数组结束标记为 \0
    //方法一
    char str1[6]={'h','e','l','l','o','\0'};
    //方法二
    //自动在最后一位补 \0 结束标记
    char str2[]="hello";
    //方法三
    //使用函数，指针类型的字符串
    /*
     int num =10
     int *p = &num;
     ------
     | 10 |
     ------
     0x778899
     
     p = 0x778899;
     *p = 10;
     
     ----------------------------------
     int arr[5]={1,2,3,4,5};
         ------------------------------------------------
         | 1        |  2      | 3        | 4      | 5   |
         ------------------------------------------------
     下标   0          1        2           3         4
     地址 0x000000  0x000004   0x000008  0x000010  0x000014
     
     取值    int nn = arr[3];
            arr[2]++;
     改值    arr[3] = 10;
     下标访问数组：  数组名就是数组的第一个元素的下标
     
     */
    char str3[]="hello";
    char *p;
    p = str3;   //数组名就是 地址
    
    printf("数组 str3[0] 的首字母 %c \n",str3[0]);
    printf("数组 str3 的首地址 %p \n",str3);
    printf("数组 *str3 的首字母 %c \n",*str3);
    
    printf("数组 str3 的第二个地址 %p \n",str3+1);
    printf("数组 *str3 的第二个字母 %c \n",*(str3+1));
    
    char *str4="world";
    //**********
    //用 str4 中的内容，初始化 str3 中的内容
    strcpy(str3, str4);
    printf("str3 = %s \n",str3);
    
    /*
    printf("str1[5] = %c \n",str1[5]);
    
    for (int i=0; i<6; i++) {
        printf("str2[%d] = %c \n",i,str2[i]);
    }
     */
    
}


void strDemo2()
{
     //创建一个员工的姓名，并赋值
    char name[20];
    //**********
    //设置字符串中内容，不同的编译器，都能正常给数组赋值
    memset(name,'z', 20);
    
    scanf("%s",name);
    printf("name = %s \n",name);
    
    //**********
    //求字符串中现有字符的长度 ,函数检查到  \0 结束
    int length = strlen(name);
    printf("现有字符串长度 %d \n",length);
    
    
    for (int i=0; i<20; i++) {
        //printf("%c  ",name[i]);
        printf("%c ",*(name+i));
    }
    printf("\n");
    
    char *adminName = "aaaaaaaa";
    //**********
    int result = strcmp(name, adminName);
    
    if (!result) {
        printf("两个字符串内容相等，管理员登录成功  \n");
    }else
    {
        printf("两个字符串内容不相等，登录失败  \n");
    }
    
}



void demo3()
{
    ////////////////////
    //指针数组，二维数组就是指针数组
    //内部存放的全部是指针的数组
    int arr[3][5] ={
        {78,77,89,79,90},
        {86,78,54,85,88},
        {88,98,72,66,91}
    };
    
    int arr1[5] = {78,77,89,79,90};
    int arr2[5] = {86,78,54,85,88};
    int arr3[5] = {88,98,72,66,91};
    
    //数组名都是指针 arr1  arr2  arr3
    int arrr[3] = {arr1,arr2,arr3};
    
    
    //////////////////////
    //数组指针 ， 用指针来定义一个数组
    //数组定义的标志  [] ,如果不用  [] 来定义一个数组，可以用指针替代
    //p1 就是一个指向数组 首地址 的指针
    int *p1 = arr1;
    
    
}


//const 修饰符，修饰的主体 num
//漂亮 女  people
//女  漂亮  people
int const num1 =100;
const int num2 = 200;

void demo4()
{
    
    //num1++;
    //num2++;
    //printf("num = %d \n",num1);
    
    ///////////////////////
    int num = 10;
    //常量指针，修饰的主体  *p
    const int *p1=&num;
    //int const *p2=&num;
    
    printf("p1  = %p \n",p1);
    printf("*p1 = %d \n",*p1);
    
    p1++;  //修改内存地址
    printf("p1  = %p \n",p1);
    printf("*p1 = %d \n",*p1);
    
    //(*p)++;   //*p 被 const 修饰
    
    //常量指针:内存地址 p 可以变，但是 *p 对应的值不能变.
    
    ///////////////////////
    //指针常量
    //const 修饰的主体是  p2，地址
    int * const p2 = &num;
    
    //p2++;
    
    (*p2)++;
    
    //地址不能变，但是地址中存放的值可以变
    
    ///////////////////////
    //指针地址不变、指针地址中存放的数据也不变
    const int * const p3 = &num;

}



void demo5()
{
    //函数与指针的关系
    ///////////////////////
    //1 函数的参数是指针
    char str[20];  //定义字符串指针
    //对字符串进行赋值
    //const char *
    //返回 最终生成的字符串指针
    char *ss = strcpy(str, "aaaaa");
    
    printf("str = %s \n",str);
    printf("ss  = %s \n",ss);
}



void demo6()
{
    //所有 带 {} 在内存中可以理解为连续内存
    printf("调用到了  demo6()  ");
    
}











