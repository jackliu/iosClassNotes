//
//  main.c
//  cProjectDemo
//
//  Created by liu on 13-9-16.
//  Copyright (c) 2013年 liu. All rights reserved.
//

//standard input output
//标准 输入 输出
#include <stdio.h>

int main(int argc, const char * argv[])
{
    //第一天
    /*
    //第一个函数 输出内容到控制台 printf();
    //print 打印  format 格式 。按照格式打印内容
    //格式  " 内容 " 可以打印，
    //外部内容要在" 占位符  %  "
    //数据类型  1 2 3 整数 int      %d
    //\n 换行符
    printf("Hello, World! \n a =%d ,b = %d \n",1,2);
    
    printf("请输入两个数字: \n");
    int x,y;  //给两个整数起名字 x y ，但是没有值
    //让用户在控制台输入，用指定格式输入,
    //赋值时需要知道 x , y 的内存地址 & 取出 x y 的地址
    //快递单上面，打印收货人名，收货地址
    scanf("%d,%d",&x,&y);
    
    printf("x = %d , y = %d \n",x,y);
    */
    
    
    //第二天
    /*
    //C 语言中的数据类型
    //C 语言实际是能够对特定值进行计算的语言
    //每个值都需要起一个名称，说明值在内存中占多少空间
    //C 语言预先定义好了常用的内存空间标准
    //int 4 个字节        char   1 个字节
    //float  4 个字节     double 8 个字节
    //void   0 个字节
    //默认情况下  12.5  是 double 类型 8 个字节
    //float 4字节  12.5  8字节
    //实数
    float price1 = 12.587f;
    price1++; //price1 是一个变量，值可以改变
    
    //强制类型转换
    float price2 = (float)50.0;
    //12.5+50.0;
    float f  =price1 + price2;  //变量
    //整数
    int    a = 100;
    short  b = 100667578877000;  //超出范围，出错
    long   c = 1000000000000l;   //不出错
    
    //字符  'a' 一个字母
    char ch1 = 'm';   //变量名以  字母、下划线、$ 符号开头
    char ch2 = '2';   //2 看作一个字符
    //所有键盘输入的字符，都在 ASCII 表中定义过,每个字符一个数字编号
    printf("m 的ASCII 码编号为 %d \n",ch1);
    printf("2 的ASCII 码编号为 %d \n",ch2);
    printf("m 的字符为  %c \n",ch1); //%c 打印一个字符 %s 打印多个字符
    printf("109 ASCII 码编号对应的字符为 %c \n",109);
    //char  类型与 int 类型值可以相互转换
    int sum = 100+'d';
    
    //可以使用程序，求出不同类型所占内存d的长度
    //sizeof(int)
    printf("ch1 所占内存长度为 : %ld \n",sizeof(char));
    printf("price1 所占内存长度为 : %ld \n",sizeof(double));
     */
    
    //运算符 :各种数学符号
    //表达式:用各种数学符号，把多个值链接在一起，得到一个结果
    //100+'d';       用一个符号把两个值连接在一起
    //price1+price2  用一个符号把两个变量连接在一起
    //price1 + 13.6  用一个符号把值和变量连接在一起
    ////////算术运算符(二元运算符) : + - * / %     
    //除法: 结果包括  商和余   两个部分
    /*
                3.2
              ------
         5   / 16
               15
              -----
                10
                10
                ---
                 0
     
            3
          ------
     5   / 16
           15
          -----
            1
     */
    printf("16 与  5 的商 : %d  \n",16/5);   //3
    printf("16 与  5 的余 : %d  \n",16%5);   //1
    
    //////增量运算符   ++   --
    //前驱增量
    int i = 10;
    int j = 3;
    //++i;
    //--i;
    printf("++i  = %d \n",++i);  //11
    printf("--i  = %d \n",--i);  //10
    
    //后驱增量
    printf("i++  = %d \n",i++);  //10
    printf("i--  = %d \n",i--);  //11
    
    printf("i+++++j = %d \n",(i++)+(++j));
    //贪心法则  i++   i++ i的值一定是已知的
    //A  ((i++)++)+j    不确定的值不能做 ++  --
    //B  (i++)+(++j)    正确
    
    /////// 关系运算符    >    ==   >=    =<   <  !=
    // 0 表示错误， 非 0 表示正确
    printf("a  > b  :  %d \n",3>2);  //判断的结果是整数
    printf("a ==  b :  %d  \n ",3==2);
    printf("a !=  b :  %d  \n",i != j);
    
    if (3>2) {
        printf("正确 \n");
    }
    
    if (9) {
        printf("正确 \n");
    }
    
    /////逻辑运算     &&与   ||或   !非
    //&& 两边全部正确才正确
    if(3>2 && 3>4){
        printf("与  OK \n");
    }else{
        printf("与  不 OK \n");
    }
    // ||  任意一边正确就正确
    if(3>2 || 3>4){
        printf("或 OK \n");
    }else{
        printf("或 不 OK \n");
    }
    // !  求相反的结果
    if(!(3>2)){
        printf("非 OK \n");
    }else{
        printf("非 不 OK \n");
    }
    
    //////三元运算符  ?  :
    //对后面的结果，根据判断条件 二选一
    int num = 3>6?5:0;
    printf("num  = %d \n",num);
    
    double num2 = 12.5 >3.7 ? 100.6:26.4;
    double dd = num2 +10;

    
    
    ///// 逗号运算符   ,
    //并列定义变量时使用
    /*
    int t =10;
    int m = 120;
    int n = 32;
    */
    int t =10,m =120,n=32;
    
    
    //float 分配 4个字节   12.5 分配 8 个字节
    //所有的小数默认都是 double 类型
    float f1 = 12.5;        //隐式类型转换，与 第三条语句等效
    float f2 = 12.5f;       //分配时指定长度
    float f3 = (float)12.5; //分配后，强制类型转换
    
    /*
     sizeof(short)
     char      1          |
     short     2          |
     int       4         \|/
     long      8          |
     float     4         \|/
     double    8          |
     */
    double d1 = 12;   //int 类型自动转换为 double
    int  i1 = (int)d1;   //double 类型自动转换为 int ??
    
    int bb = 'a';         //从 char 到 int 自动转换
    char cc = (char)100;  //从 int 到  char 强制转换
    
    int  aa = -10;
    unsigned int a = 10;
    
    return 0;
}






