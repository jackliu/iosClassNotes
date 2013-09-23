//
//  demo.c
//  cProjectDemo2
//
//  Created by liu on 13-9-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

/*
 函数：把多行代码，放在一个 {} 空间中，与其他的代码分割开
 函数的组成：
 函数返回值类型  函数名 (函数参数){函数体 }
 (1)函数名
 (2)函数参数
 (3)函数体
 (4)函数返回值类型
 
 int 函数名(int a,char b,double c){  函数多行代码  }
 */
void demo1()
{
    //二选一
    unsigned int num;
    printf("请输入一个整数  \n");  //提示信息
    scanf("%d",&num);  //把用户输入的整数 %d，存入&取出的num内存地址中
    if (num > 60)
    {
        printf("恭喜，成绩及格  \n");
    }
    else
    {
        printf("成绩不及格，需要加油  \n");
    }
}


void demo2()
{
    //二选一
    unsigned int num;
    printf("请输入一个整数  \n");  //提示信息
    scanf("%d",&num);  //把用户输入的整数 %d，存入&取出的num内存地址中
    //N选一
    if (num > 60)
    {
        printf("恭喜，成绩及格  \n");
        if (num <70) {
            printf("D \n");
            return;   //这里终止程序，后面的代码就不会执行
        }
        if (num <80) {
            printf("C \n");
            return;
        }
        if (num <90) {
            printf("B \n");
            return;
        }
        if (num <=100) {
            printf("A \n");
            return;
        }
    }
    else
    {
        printf("成绩不及格，需要加油  \n");
    }
    
}

void demo3()
{
    //二选一
    unsigned int num;
    printf("请输入一个整数  \n");  //提示信息
    scanf("%d",&num);  //把用户输入的整数 %d，存入&取出的num内存地址中
    //N选一
    
    switch ((int)num/10) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            printf("不及格  \n");
            break;
        case 6:
            printf("D  \n");
            break;
        case 7:
            printf("C  \n");
            break;
        case 8:
            printf("B  \n");
            break;
        case 9:
            printf("A  \n");
            break;
        case 10:
            printf("A+  \n");
            break;
        default:
            printf("输入错误 \n");
            break;
    }
    
}




void forDemo4()
{
    //循环语句，重复相同的步骤，根据不同的循环条件，得到不同的结果
    //求从 1 加到 100 的值
    int sum = 0;  //结果
    //for 循环的组成： 初始条件、终止条件、增长量、循环体
    for (int i=1; i<=100; i++) {
        printf("sum +i  = %d + %d \n",sum,i);
        sum = sum +i;
    }
    printf("最终结果为 sum = %d \n",sum);
    
}

//演示如何得到用户输入的字符串
void charDemo()
{
    printf("请输入字符串，以 回车键  结束  \n");
    /*
     //一次得到一个字符
    int num = getchar();  //得到的是字符对应的 ASCII 码
    printf("输入内容是  %d \n",num);
    printf("转换为字符  %c \n",(char)num);
    */
    
    //一次得到多个字符，循环，边循环边判断
    //只知道何时结束，需要用 while(){} 循环
    char c;
    while ((c=getchar())!='\n') {
        printf("%c \n",c);
    }
    
}


/*
 输入一行字符，分别统计出其中英文字母、空格、数字、其他字符的个数
 */
void getCharNumbers()
{
    //1  用户输入多个字符
    char c;
    int letters=0;  //字母个数
    int space = 0;  //空格个数
    int numbers = 0; //数字个数
    int others  = 0; //其他字符个数
    
    printf("请输入任意个字符，以回车键结束  \n");
    while ((c=getchar())!='\n') {
        //一次循环，得到一个字符
        //判断字母个数
        if ((c>='a'&&c<='z') || (c>='A'&& c<='Z')) {
            letters++;
        }
        else if (c==' ') {
            space++;
        }
        else if (c>='0'&& c<='9') {
            numbers++;
        }else{
            others++;
        }
        
        //printf("%c",c);
        
    }
   printf("字母个数为 %d ,数字个数为 %d,空格个数为 %d,其他字符个数为 %d \n",letters,numbers,space,others);
    
}





/*
 求  sum = a+aa+aaa+aaaa+.....+(n个)a,其中 a 是数字
 如  a= 2 ,n = 5   sum = 2+22+222+2222+22222
 a 和 n 由键盘输入
 */
void getSum()
{
    //1 用户输入两个数据
    int a=0,n=0;
    printf("请输入 a =\n");
    scanf("%d",&a);
    printf("请输入 n =\n");
    scanf("%d",&n);
    
    int sum=0;
    int aaa=0;  //多个相同数字拼成的新数字
    int i =1;   //加法的计算次数
    //2  根据 n 的次数进行重复
    /*
     假定 a = 2   n = 5
     i=1  aaa = 2        ,sum=2,        a=20
     i=2  aaa =2+20 = 22  sum=2+22      a=200
     i=3  aaa =22+200=222 sum=2+22+222  a=2000
     i=4  aaa=222+2000=2222  sum=2+22+222+2222  a=20000
     i=5  aaa=2222+20000=22222 sum=2+22+222+2222+22222 a=200000
     */
    while (i<=n) {
        aaa = aaa+a;
        sum = sum+aaa;
        a = a*10;
        i++;
    }
    
    
    
    
    
}














