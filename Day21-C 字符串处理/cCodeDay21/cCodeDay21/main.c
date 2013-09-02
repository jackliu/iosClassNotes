//
//  main.c
//  cCodeDay21
//
//  Created by liu on 13-9-2.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
//系统专门定义的 ，处理字符串的函数头文件
#include <string.h>
#include <stdlib.h>

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
    
    
    /*
    //通过人工一个字符一个字符的给一个字符串赋值
    //定义一个字符串数组
    char sarr[10];
    //手动设置内存中的所有  默认值
    //参数一，数组名；参数二，初始化的值；参数三，设置几个这样的值
    memset(sarr, '\0', 10);
    
     //纯手工一个个赋值
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
     
    //调用系统函数，一次性得到所有输入字符
    //gets(sarr);  //无法控制输入字符长度，容易内存溢出
    
    //调用系统函数，一次性输出所有字符
    //puts(sarr);
    
    //printf("使用系统提供的 文件输入输出 \n");
    //使用文件输入函数
    fgets(sarr, 10, stdin);  //系统标准输入流，可以指定输入长度
    
    puts(sarr);
    
    
    printf("用户输入的内容为  \n");
    for (int i=0; i<100; i++) {
        printf("%c     ",sarr[i]);
    }
     */
    
    
    
    
    /*
    printf("Demo 5   字符串的操作:比较、拷贝、格式转换、大小写转换 \n");
    //比较 string compare  -> int strcmp(str1,str2);
    //返回值为 0 的时候，两个字符串内容完全相同。非 0  不相同(-1  1)
    char str1[10];
    char str2[10];
    fgets(str1, 10, stdin);
    fgets(str2, 10, stdin);
    
    int result = strcmp(str1, str2);
    printf("比较结果为  %d  \n",result);
    
    //if (strcmp(str1, str2)) {
    //str1 == str2
    if (strcmp(str1, str2)==0){
        printf("两个字符串相同  \n");
    }else{
        printf("两个字符串不同   \n");
    }
    
    
    //定义，得到 10 个长度的空间
    char str3[10];
    //赋值，每个空间都是 \0
    memset(str3, '\0', 10);
    //真正的在空间里面设置我们需要存放的字符串内容
    strcpy(str3, "hello");
    
    
    double d;
    scanf("%lf",&d);
    
    char str4[]="123.123";
    d = atof(str4);
    */
    
    //大小写转换
    char str5[]="hello i have iphone 5s";
    //strupr(str5);   //XCode 中不支持    
    
    //字符查找
    
    //查找字符串中 i 第一次出现的位置
    //strchr
    char *find;
    find = strchr(str5, 'i');
    printf("按照字符查找 : %s \n",find);
    
    //查找字符串中 iphone 第一次出现的位置
    //strstr
    char *find2;
    find2 = strstr(str5, "iphone");
    printf("按照字符串查找 : %s \n",find2);
    
    return 0;
}








