//
//  main.c
//  cCodeDay32
//
//  Created by liu on 13-9-17.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

//数组的长度
#define LISTSIZE 100
//数组的类型
//给 int 类型统一了新的名称
typedef int DataType;
//定义一个指定长度，指定类型的数组
//arrLength 如果表中有10 个数据，总长100 arrLength=10
typedef struct{
    DataType arr[LISTSIZE];
    int arrLength;
}Seqlist;


//插入的具体实现方法
//实现了插入算法
/*
 Seqlist *_pSeqlist  存放现有数据的数组
 DataType _data      需要新插入的一个数据
 int _nIndex         需要指定的插入位置
 */
void insertList(Seqlist *_pSeqlist,DataType _data,int _nIndex)
{
    int numLength = _pSeqlist->arrLength;
    //判断插入的位置是否越界
    if(_nIndex<0 || _nIndex >numLength){
        printf("指定的下标索引越界，请重新指定  \n");
        return;
    }
    
    //如果插入的位置，超过 100 ，溢出
    if (_pSeqlist->arrLength > LISTSIZE) {
        printf("现在标中数据，已经超过 最大长度，发生溢出错误  \n");
        return;
    }
    
    //从最后到插入位置截至，从后往前推导
    //arrLength  10 存入数组的下标，最大是 0-9
    for(int i=_pSeqlist->arrLength-1;i>=_nIndex;i--)
    {
        _pSeqlist->arr[i+1] = _pSeqlist->arr[i];
    }
    
    //往指定的位置插入新数据
    _pSeqlist->arr[_nIndex] = _data;
    
    //表中现有数据的长度 +1
    _pSeqlist->arrLength++;
    
    //打印所有数据
    for (int i=0; i<_pSeqlist->arrLength; i++) {
        printf("第 %d 个元素值为 %d \n",i,_pSeqlist->arr[i]);
    }
}



int main(int argc, const char * argv[])
{
    //数组功能太弱
    Seqlist list={{20,12,30,25},4};
    
    //printf("结构体中的 长度 %d \n",list.arrLength);
    
    //调用完成的算法，实现数据的插入和打印
    insertList(&list, 10, 2);
    
    return 0;
}













