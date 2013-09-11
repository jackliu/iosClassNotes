//
//  main.c
//  cCodeDay28
//
//  Created by liu on 13-9-11.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>


//枚举的定义格式
//A  B  每一个都是一个枚举类型的值
//不是 char 字符，不用带任何符号
enum{A,B,C,D};
enum TravelPlan{Ameracon,Japan,Tai,Franch};

//定义春、夏、秋、冬 四个季节，可以人为设置值
//这样定义，调用的时候每次都必须写 enum 关键字
enum season {
    spring = 1,
    summer = 2,
    fall = 3,
    winter = 4
};

//可以进行如下简化，调用的时候不用写 enum 关键字
typedef  enum{
    Mon,Tues,Wens,Thur,Fri,Sun,Sat
}WeekDay;
/////////////////////////////////////////
//定义结构体,描述一个学员的信息：姓名、年龄、性别、、、、
struct{char *name;int age;char sex;};
//完整的结构体定义
struct student {
    char *name;
    int age;
    char sex;
};
//简化调用，使用自定义类型
typedef struct{
    char *name;
    int age;
    char sex;
} Student;

//测试结构体的大小,由结构体中较长的类型决定，按照最长的类型统一分配
//例子，与老板一起出差，享受一样的飞机、旅馆的待遇
typedef struct{
    char c;   //长度 1  sizeof(char)
    int a;    //长度 4  sizeof(int)
} aaa;


int main(int argc, const char * argv[])
{
    /*
    //打印一个枚举的值
    //定义一个单独的枚举类型
    printf("Demo1 演示枚举  \n");
    enum TravelPlan plan = Franch;
    //从多个选项中选择，采用switch case
    //switch(整数 字符 枚举)
    switch (plan) {
        case Ameracon:
            printf("去美国，不要坐韩国飞机. \n");
            break;
        case Japan:
            printf("去日本，最好说英语 \n");
            break;
       case Tai:
            printf("去泰国，一定要看表演  \n");
            break;
        case Franch:
            printf("去法国，一定要买香水 \n");
            break;
        default:
            printf("如果那都不去，家里呆着 \n");
            break;
    }
    
    ///直接定义，并调用枚举类型
    enum season s1 = spring;
    ///使用 typedef 简化后 ////
    WeekDay wd = Mon;
    */
    
    printf("Demo2 演示结构体 !\n");
    //创建一个学员，用一个变量 stu1 ，表示三个属性值
    //stu1 叫对象名
    struct student stu1 = {"蒋勋",24,'b'};
    printf("学员的姓名 %s  \n",stu1.name); //”对象名.“ 访问属性
    printf("学员的年龄 %d  \n",stu1.age);
    printf("学员的性别 %c  \n",stu1.sex);
    
    Student stu2 = {"小红",27,'g'};
    
    printf("---- 使用指针访问结构体中的属性值 ----- \n");
    //定义指向结构体首地址的指针
    struct student *p1=&stu1; //取出已定义的对象的地址
    printf("学员的姓名 %s \n",p1->name); //”指针名->“ 访问属性
    printf("学员的年龄 %d \n",p1->age);
    printf("学员的性别 %c \n",p1->sex);
    
    
    printf("测试结构的长度");
    int size = sizeof(aaa);
    printf("sizeof(aaa) = %d \n",size);
    
    
    
    
    
    
    return 0;
}









