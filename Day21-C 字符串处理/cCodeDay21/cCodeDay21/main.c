//
//  main.c
//  cCodeDay21
//
//  Created by liu on 13-9-2.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    /*
    printf("Demo 1 定义基本的字符 !\n");
    //一个变量，指向一个 字符
    char c = '%';
    
    //>   <  22 == 33   'a' > 'b'
    //C 语言都是由美国标准委员会  ASCII
    //ASCII 标准，指定每个键盘上的键值，都对应一个数字
    //任何一个字符，程序都自动转换成数字
    //ASCII 码
    
    //如何判断 c 是小写字符
    if (c>='a'  && c<='z') {
        printf("c 是一个小写字母  \n");
    }
    else if (c>='A' && c<='Z') {
        printf("c 是一个大写字母   \n");
    }
    else if (c>='0' && c<='9') {
        printf("c 是一个数字   \n");
    }else{
        printf("c 是一个特殊字符  \n ");//%$^&*#@!
    }
    
    
    printf("Demo2  字符串的定义  ! \n");
    //字符串都加   "  "
    
    //赋值方式一:用 "  " 赋值
    //char s1[12] = "i love china";  //长度不够，存取数据错误
    char s1[13] = "i love china"; //字符串数组，结尾需要 \0 标记
    printf("字符串内容如下: %s  \n",s1);  //%s  string
    //赋值方式二:用 {'',''} 一个一个的赋值
    char s2[] = {'c','h','i','n','a','\0','a'};
    printf("s2 = %s \n",s2);
    for (int i=0; i<7; i++) {
        char temp = s2[i];
        printf("%c \n",temp);
    }
    //赋值方式三:用 {" "} 整体赋值
    char s3[10]={"china"};   
    printf("s3 = %s \n",s3);
    for (int i=0; i<10; i++) {
        char temp = s3[i];
        printf("%c \n",temp);
    }
     */
    
    
    
    //通过人工一个字符一个字符的给一个字符串赋值
    //定义一个字符串数组
    char sarr[100];
    char c;
    printf("请输入字符串内容  \n");
    //循环，每次让用户输入一个字符
    for (int i=0; i<100; i++) {
        //得到输入字符
        scanf("%c",&c);
        //判断，如果输入 0 ，结束输入
        if (c == '0') {
            break;
        }
        //把输入字符，存入数组中
        sarr[i] = c;
        //scanf("%c",&sarr[i]);
    }
    
    printf("用户输入的内容为  \n");
    for (int i=0; i<100; i++) {
        printf("%c     ",sarr[i]);
    }
    
    
    
    
    
    
    return 0;
}








