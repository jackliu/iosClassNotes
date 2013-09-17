//
//  main.c
//  c-code9
//
//  Created by liu on 13-4-9.
//  Copyright (c) 2013年 liu. All rights reserved.
//  目标，了解最简单的一种数据结构--顺序表
//  在 c 中，学习过数组，在内存空间中分配连续内存的一种数据类型
//  数组的内存分配方式，实际上就是 顺序表的 存储结构
//  深入，控制这一块内存中的数据，
//  1、按照下标索引取值 arr[8]  *(p+7)
//  2、往数组结构中，插入一个值(首、尾、中)
//  3、从数组结构中，删除一个值(首、尾、中)
//  4、得到数组的长度
//  5、按照指定的下标，搜索数组中的某个值
//  6、按照指定的值，在数组中查找该值的下标索引

#include <stdio.h>

#pragma mark -
#pragma mark 宏定义、结构体、类型声明
//定义数组长度的宏
#define ARRAY_SIZE 100
//#define INT int

//希望顺序表中，存入灵活的类型，需要自定义一个类型
typedef int DataType;
//希望顺序表中，下次存入是 double 类型
//typedef double DataType;

//定义一个顺序表的结构体，有 存储数据的数组、存储数据的个数
//自定义的数据类型,根据顺序表的特点
struct sequenceList {
    DataType data[ARRAY_SIZE];  //存储数据的数组
    int length;     //存储数据的个数
};
//给结构体，起一个简化的名称
typedef struct sequenceList seqList;


#pragma mark -
#pragma mark 函数声明
//初始化一个列表中的长度
void initList(seqList *list);

//  2、往数组结构中，插入一个值(首、尾、中)
//seqList *list 一个顺序表结构体 的 内存首地址
//i    代表想在  结构体数组哪个位置插入值
//DataType 代表想插入的值
//int   表示返回的结果，如果返回 小于 0 的值，代表失败，大于 0代表成功
int insertList(seqList *list,DataType data,int i);

//  3、从数组结构中，删除一个值(首、尾、中)
int deleteList(seqList *list,int i);

//  4、得到数组的长度
int getLength(seqList *list);


//  1、按照下标索引取值 arr[8]  *(p+7)
//seqList *list 一个顺序表结构体 的 内存首地址
//i    代表想取出  结构体数组中哪个位置的值
//DataType *  从顺序表中，按照指定位置 i ，得到的值的内存地址
DataType  getValue(seqList *list,int i);

//  5、按照指定的值，在数组中查找该值的下标索引
int getIndex(seqList *list,DataType data);



#pragma mark -
#pragma mark 程序入口 , main()
int main(int argc, const char * argv[])
{

    //定义一个结构体的顺序表
    seqList list = {{22,43,56,76,100},5};
    
    //得到数组长度
    int len = getLength(&list);
    printf("目前顺序表中的数据个数为 %d \n",len);
    
    //取出第 5 个位置的值
    DataType  ss = getValue(&list, 4);
    
    //查找 100 值在顺序表中的位置
    int index = getIndex(&list, 22);
    if (index < 0) {
        printf("值在顺序表中 不存在 \n");
    }else{
        printf("值在顺序表中的位置是 %d \n",index);
    }
    
    //补全插入、删除的测试代码
    
    
    
    return 0;
}

#pragma mark -
#pragma mark 函数实现
//初始化列表,一般分配列表在内存中所占空间
void initList(seqList *list)
{
    list->length = 0;
}

//  1、按照下标索引取值 arr[8]  *(p+7)
//seqList *list 一个顺序表结构体 的 内存首地址
//i    代表想取出  结构体数组中哪个位置的值
//DataType *  从顺序表中，按照指定位置 i ，得到的值的内存地址
DataType  getValue(seqList *list,int i)
{
    DataType dt = list->data[i];
    printf("在第 %d 个位置的值是 %d \n",i,dt);
    return dt;
}

//  4、得到数组的长度
int getLength(seqList *list)
{
    //seqList *list 结构体指针
    //方法一：用地址
    return list->length;
    //方法二：
    //(*list).length;
}



//  5、按照指定的值，在数组中查找该值的下标索引
int getIndex(seqList *list,DataType data)
{
    int len = getLength(list);
    //循环把 数组中每个元素取出，与 data 一一比较
    for (int i=0; i<len; i++) {
        //一一比较，如果相等，该元素在数组中的位置就确定了
        if (data == list->data[i]) {
            return i; //索引位置
        }
    }
    //循环完毕，还没有找到
    return -1;
}


int insertList(seqList *list,DataType data,int i)
{
    //如果当前列表长度等于 宏定义长度，说明列表已经存满
    //无法插入，返回 -1
    if (listLength(list)==ARRAY_SIZE) {
        return -1;
    }
    //定义插入位置
    int insertPosition = i;
    //如果 i 小于 0 ，从第一个位置插入
    if (i<0) {
        insertPosition = 0;
    }
    //如果 i 大于列表长度，从最后一个位置插入
    if (i>listLength(list)-1) {
        insertPosition = listLength(list);
    }
    //把插入点后面所有的值，往后交换，移动一个位置
    for (int j=listLength(list)-1; j>=insertPosition; j--) {
        list->data[j+1]=list->data[j];
    }
    //在腾出来的位置上插入指定值 data
    list->data[insertPosition] = data;
    //把列表长度加长一个
    list->length++;
    
    return 1;
}

//  3、从数组结构中，删除一个值(首、尾、中)
int deleteList(seqList *list,int i)
{
    if (i<0 || i>listLength(list)) {
        return -1;
    }
    
    //把后面的值根前面的交换，往前移动
    for (int j=i; j<listLength(list); j++) {
        list->data[j]=list->data[j+1];
    }
    //减少列表的长度，等价于删掉了最后一个位置的值
    list->length--;
    return 1;
}






