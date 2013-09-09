//
//  main.c
//  cCodeDay26
//
//  Created by liu on 13-9-9.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

//_a  _b 都是形式参数，调用时，复制一个值传递给函数内部
//在函数中对 _a  _b 的值进行修改，不影响外部的值
//形参调用，传递的是复制后的  值  ，比较浪费内存
void swap1(int _a,int _b)
{
    //暴力测试
    printf("交换前 a = %d , b = %d \n",_a,_b);
    int temp = _a;
    _a = _b;
    _b = temp;
    printf("交换后 a = %d , b = %d \n",_a,_b);
}

//实参调用，传递的是 原始数据的地址  ，比较浪费脑细胞
void swap2(int *a,int *b)
{
    //暴力测试
    printf("交换前 a = %d , b = %d \n",*a,*b);
    int temp = *a;
    *a = *b;
    *b = temp;
    printf("交换后 a = %d , b = %d \n",*a,*b);
}


//定义字符串，并判断里面是否有 'C'，输出判断结果
void findString(){
    //定义一个字符串类型
    char *pStr = "This is C language";
    //计数器，如果有一个C 计数器 加 1 ，可以看作字符数组的下标
    int nCount = 0;
    
    //pStr 地址可以当作数组名来使用
    while (pStr[nCount]) {
        if (pStr[nCount] == 'C') {
            break;  //找到第一个 停止循环
        }
        
        nCount++; //最终值就是找到 'C' 的位置
    }
    
    if (pStr[nCount] != '\0') {
        printf("找到  C 字符 \n");
    }else{
        printf("没找到 C  字符  \n");
    }
}



int main(int argc, const char * argv[])
{
    /*
    int var1 = 100;
    int var2 = 200;
    //swap1(var1, var2);
    swap2(&var1, &var2);
    printf("main 函数中两个值为 var1 = %d , var2 = %d \n",var1,var2);
    */
    
    findString();
    
    
    
    //想在内存中，放入 10 这个值，
    //由编译器决定 10 保存在哪块内存中
    //我们如果想用这个值，起了一个名字 a
    //a 只是临时性的指向 10 所在内存
    //&a 取出 10 所在的内存地址，内存地址是固定的
    /*
    //买眼镜的淘宝店：宝龙眼镜
    int taobao  =22;
    int jd = 22;
    int paipai = 22;
    //三家网店，都在同一个厂里拿货,真实地址
    int *p = &taobao;
    */
    
    
    /*
    int a = 10;
    //&a 地址是很长的数字 0x7fff5fbff8ac
    //*pointer 使用带 * 的变量 pointer 专门保存上面的地址值
    int *pointer;
    pointer = &a;
    
    printf("变量 a 所指向的内存地址为 %p  \n",&a);
    printf("指针 pointer 的值为 %p \n",pointer);
     */
     
    
     /*
     arr [0]   1   2   3   4   5   6
        -----------------------------
        | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
        -----------------------------
   地址  arr arr+1 arr+2 .....
   取值  *arr *(arr+1) *(arr+2).....
     */
   
    /*
    //指针操作一维数组
    int arr[] = {1,2,3,4,5,6,7};
    
    //取整个数组的地址，实际就是得到数组第一个元素的地址
    printf("arr 的地址为 %p \n",&arr);
    printf("arr 的起始地址为 %p \n",arr);
    printf("arr 第二个元素地址 %p \n",(arr+1));
    
    printf("int 类型长度为 %ld \n",sizeof(int));
    printf("%ld \n",sizeof(arr));
    printf("%ld \n",sizeof(*arr));
    */
    
    
    /*
下标法
 arr2[00] 01  02  03
     -----------------
     | 1 | 2 | 3 | 4 |
     -----------------
指针 row1+0  +1  +2   +3
     
 arr2[10]  11  12  13
     -----------------
     | 5 | 6 | 7 | 8 |
     -----------------
  row2+0   +1  +2  +3
     
      20   21   22   [2][3]
     --------------------
     | 9 | 10 | 11 | 12 |
     --------------------
  row3+0  +1    +2   +3
     
  第二维
     ------------------------
     | row1  | row2  | row3 |
     ------------------------
      arr2    arr2+4   arr2+8
     
     */
    /*
    //指针操作二维数组
    int arr2[3][4]={
        {1,2,3,4},
        {5,6,7,8},
        {9,10,11,12}
    };
    
    printf("下标法,取出数组2 中第一个数据  %d \n",arr2[0][0]);
    //纵向，取出每行首地址
    printf("指针法,取出数组2 中第一行第一列数据 %d \n",**arr2);
    printf("指针法,取出数组2 中第二行第一列数据 %d \n",**(arr2+1));
    printf("指针法,取出数组2 中第三行第一列数据 %d \n",**(arr2+2));
    //横向，取出每列的地址
    printf("指针法,取出数组2 中第一行第二列数据 %d \n",*(*arr2+1));
    
    printf("指针法,取出数组2 中第一行第二列地址 %p \n",*arr2+1);
    
    
    printf("下标法,取出数组2 中最后一个数据  %d \n",arr2[2][3]);
    // arr2 本身指向第一行、第一列的地址
    // arr2+2 指向第三行、第一列的地址
    // *(arr2+2) 是地址，横向移动
    // *(arr2+2)+3  移动到第三行、第四列的地址
    // *()  取出这个地址中的值
    printf("指针法,取出数组2 中最后一个数据 %d \n",*(*(arr2+2)+3));
    */
     
    
    return 0;
}







