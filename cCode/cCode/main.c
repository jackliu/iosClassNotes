//
//  main.c
//  cCode
//
//  该程序是我们的第一个 C 语言程序
//
//  Created by liu on 13-8-22.
//  Copyright (c) 2013年 liu. All rights reserved.
//

//导入 <link href="ccc.css" .. />
//把外部的文件内容，导入到当前文件中
//好处：运行的时候一起运行
#include <stdio.h>

//main() 函数，主函数，格式固定，程序运行的入口
int main(int argc, const char * argv[])
//int main()
//long main()
//int main(void)
{
    /*
    //{} 表示 方法中有多行代码
    // insert code here...
    
    //直接使用了 stdio.h 文件中的方法 printf()
    //打印一句话到  控制台
    printf("Hello, World!\n");

    //定义了三个整数  int ，但是没有赋值
    int a,b,c;
    //想让用户，在程序运行后，到这一句话，停下来输入值
    //要想让程序暂停，需要系统的程序运行，才能打断当前程序
    //1 scanf() 函数暂停主程序，接收键盘输入
    //2 %d      对接收的内容进行格式验证,%d 要求输入内容是整数
    //3 &a      把上两步(接收、验证)得到的结果，存入指定的内存中 &
    printf("请输入数字 a , b , c 的值 ");
    //参数  1 "%d%d%d" 规定输入三个整数
    //参数  2  &a    表示输入的第一个整数放入 a 的地址中
    //参数  3  &b    表示输入的第二个整数放入 b 的地址中
    //参数  4  &c    表示输入的第二个整数放入 c 的地址中
    scanf("%d%d%d",&a,&b,&c);

    printf("a =%d , b=%d , c=%d",a,b,c);
    */
    
    
    //计算今天的最大温差?
    //真正要计算的是数值，但是编程要求，我们给每个值起一个名字
    //今天的值，今天的名字
    //heigher = 32;
    //lower = 27;
    
    //明天的值，明天的名字
    //heigher = 35;
    //lower = 26;
    //对这样，值不断变化，名字不变的，把这个名字叫做 “变量”
    //如果值有明确的范围  -40--40 统称为 整数类型(integer)
    //heigher  变量名，我自己随便定义的，但是要遵守命名规则
    //魔鬼变量: 随意定义的没有任何意义的变量名
    int heigher = 32;
    int lower = 27;
    int  temperatureDiff = heigher - lower;
    
    //变量名、值、类型
    //命名规范
    //值的范围
    
    ////////////////////////////////////////////
    //小数，浮点数
    //672364782374822347879000278.34728347
    float f1 = 1.5;      //存放数据的长度为    32
    double f2 = 1.5;     //存放数据长度是双倍  64
    
    //字符数据类型  33--126 之间的整数可以打印成字符
    char aa = '*';   //定义一个字符类型的值 ''
    printf("字符内容是    %c \n",aa);
    printf("字符数字是    %d \n",aa);
    
    printf("数字 100 ，对应字符为 %c \n",100);
    
    //判断这个字符是否是小写字符
    //char c = 'j';
    //c>='a'   c<='z'
    //c>=97    c<=122
    
    
    
    //计算乘坐地铁到学校，(时速、时间已知)距离?
    //1111 1111 1111 1111  1111 1111  1111 1111  4个字节float
    //1111 1111 1111 1111  1111 1111  1111 1111 1111 1111 1111 1111  1111 1111  1111 1111  double 200.0
    //从  double -> float 的数值类型转换 ,从低位匹配，直接把低位放入
    //后面一半，直接放入；前面一半 自动截取掉，存放的数据全部都不要了
    
    float speed = 200.0f;   //单位 公里/小时
    float times = 1.5f ;    //小时
    float length = speed * times;
    printf("家到学校距离为 : %f \n",length);
    
    
    
   //计算一天有多少秒、一年有多少秒、一辈子有多少秒?
    int secondOfDay=60*60*24;
    int secondOfYear=secondOfDay * 365;
    long secondOfLife=secondOfYear *70; //会溢出
    printf("一天的秒数 %d \n",secondOfDay);
    printf("一年的秒数 %d \n",secondOfYear);
    printf("一生的秒数 %ld \n",secondOfLife);
    
    
    
    //计算一个连锁快餐店一天的营业额，第一天营业额 1 ，以后每天营业额增加 5% 。问 一个月后，总营业额多少?单位(万元)：
    //方法实现简单，但是很繁琐
    double a = 0.0;  //第 0 天
    double earnMoney1 = a*0.05 + 10000.0;  //第一天
    double earnMoney2 = earnMoney1*0.05+earnMoney1;
    double earnMoney3 = earnMoney2*0.05+earnMoney2;
    
    //a = a*0.05 +10000;  //第一天
    //a = a*0.05 + a;     //后面的第 n 天
    
    //......
    //找出公式的规律，然后通过 固定的语法计算，循环
    double day = 0.0;  //每天营业额
    double sum = 0.0;  //总营业额
    //循环
    for (int i=1; i<=30; i++) {
        //判断
        if(i == 1){
            day = 10000.0;
        }
        day = day*0.05+day;
        sum = sum + day;
    }
    printf("一个月总营业额为 %f \n",sum);
    
    
    //一只螃蟹一张嘴，两只钳子，八条腿，问 130 只螃蟹多少条腿?
    
    
    //如果一个数字，只有自己和1能够整除，这个数字叫质数，问 100 以内有几个质数   ，200以内有几个，500 以内有几个?
    
    
    
    
    //方法需要返回值，这里返回一个默认值
    return 0;
}






