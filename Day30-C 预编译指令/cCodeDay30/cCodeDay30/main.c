//
//  main.c
//  cCodeDay30
//
//  Created by liu on 13-9-13.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

#define SAYHELLO "helloHJSAFHASDHFKJFHAJKSHFJKASHkhJSAHIIiausdifhasifhkhs ak jfkfkasjflakfjaljasklfjasfklsjdflskjoijfakjhsk\' jhjasdhfj "

#define BR printf("\n")

#define  LOG printf("hello")

#define SAYHELLO "I love Shanghai"


void demo1();
void demo2();
void demo3();
void demo4();

//单个字符操作
void demo5();
void demo6();
void demo7();


int main(int argc, const char * argv[])
{

    //Demo1 字符串格式化输入输出函数
    //demo1();
    //demo2();
    
    //Demo2 文件格式化输入输出函数
    //demo3();
    //demo4();
    
    //Demo3 演示对文件进行单个字符的读取和写入
    //demo5();
    //demo6();
    //demo7();
    
    printf(SAYHELLO);
    BR;
    LOG;
    BR;
    LOG;
    
    return 0;
}



void demo1()
{
    //1 定义字符串
    char arr[]="name=admin,password=1234";
    //只想从字符串中，取出 admin 1234
    int password;   //保存密码的变量
    char name[20];  //保存姓名的变量
    
    //2 使用字符串格式化输入函数，
    sscanf(arr, "name=%5s,password=%d",name,&password);
    //3 输出看结果
    printf("name = %s , pwd = %d \n",name,password);
}


void demo2()
{
    //1 定义字符串
    char arr[]="name=aaaaa,password=123";
    //想用 admin 1234 修改字符串中已有的内容
    
    //2 使用字符串修改已有字符串中的内容
    sprintf(arr, "name=%5s,password=%d","admin",250);
    
    //3 输出看结果
    printf("%s \n",arr);
}


void demo3()
{
    //1 定义文件指针
    FILE *file;
    //按照指定路径，用只读的方式打开文件
    file = fopen("/Users/liu/Documents/aaa.txt", "rwa");
    //2 判断文件是否能够打开，不能打开，提示并退出
    if (NULL == file) {
        printf("文件路径错误，无法打开，请检查文件路径 \n");
        exit(-1);
    }
    
    //定义两个变量保存，读取出来的内容
    char name[20];
    int password;
    //3 按照指定的格式，从文件中读取值
    fscanf(file, "name=%5s,password=%d",name,&password);
    
    
    //4 测试，看是否取出数据
    printf("name = %s , pwd = %d \n",name,password);

    fclose(file); //与 fopen 配套的操作
    
}



void demo4()
{
    //1 定义文件指针
    FILE *file;
    //按照指定路径，用只读的方式打开文件
    file = fopen("/Users/liu/Documents/bbb.txt", "w");
    //2 判断文件是否能够打开，不能打开，提示并退出
    if (NULL == file) {
        printf("文件路径错误，无法打开，请检查文件路径 \n");
        exit(-1);
    }
    
    //3 往文件写入内容
    fprintf(file, "user=%s,password=%d","hello",123);

    fclose(file); //与 fopen 配套的操作    
}




void demo5()
{
    //1 定义文件指针
    FILE *file;
    //按照指定路径，用只读的方式打开文件
    file = fopen("/Users/liu/Documents/bbb.txt", "r");
    //2 判断文件是否能够打开，不能打开，提示并退出
    if (NULL == file) {
        printf("文件路径错误，无法打开，请检查文件路径 \n");
        exit(-1);
    }
    
    //3 逐字读取文件中的内容
    //先读取第一个字符
    char ch = fgetc(file);  //u
    //判断读取的字符是不是最后一个字符
    while (ch != EOF) {
        //打印该字符
        putchar(ch);
        //再读取下一个字符，交给 while 循环判断
        ch = fgetc(file);
    }

    fclose(file); //与 fopen 配套的操作
}


void demo6()
{
    //1 定义文件指针
    FILE *file;
    //按照指定路径，用只读的方式打开文件
    file = fopen("/Users/liu/Documents/ccc.txt", "w");
    //2 判断文件是否能够打开，不能打开，提示并退出
    if (NULL == file) {
        printf("文件路径错误，无法打开，请检查文件路径 \n");
        exit(-1);
    }
    
    //3 按照 ASCII 编码的顺序，写入文件
    printf("%d",'a');
    fputc(97, file);
    
    for (int i=100; i<128; i++) {
        fputc((char)i, file);
    }
    
        
    fclose(file); //与 fopen 配套的操作
}


//用单字符函数，实现文本文件的复制
void demo7()
{
    //1 定义文件指针
    FILE *fin,*fout;
    //按照指定路径，用只读的方式打开文件
    fin = fopen("/Users/liu/Documents/bbb.txt", "r");
    fout = fopen("/Users/liu/Documents/ccc.txt", "w");
    
    //2 判断文件是否能够打开，不能打开，提示并退出
    if (NULL == fin  || NULL == fout) {
        printf("文件路径错误，无法打开，请检查文件路径 \n");
        exit(-1);
    }
    
    //3 逐字读取文件中的内容
    //先读取第一个字符
    char ch = fgetc(fin);  //u
    //判断读取的字符是不是最后一个字符
    while (ch != EOF) {
        //打印该字符
        putchar(ch);
        fputc(ch, fout);
        //再读取下一个字符，交给 while 循环判断
        ch = fgetc(fin);
    }
    
    fclose(fin); //与 fopen 配套的操作
    fclose(fout);
}



