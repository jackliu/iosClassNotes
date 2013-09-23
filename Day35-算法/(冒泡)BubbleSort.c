void  Swap( int   * a,  int   * b)  
  {  
     int  temp;  
  
    temp  =   * a;  
     * a    =   * b;  
     * b    =  temp;  
}   
   
 //  冒泡排序   
 void  BubbleSort( int  array[],  int  length)  
  {  
     //  记录一次遍历中是否有元素的交换   
      bool  exchange;  
     for  ( int  i  =   0 ; i  <  length;  ++ i)  
      {  
        exchange  =   false ;  
         for  ( int  j  =  i  +   1 ; j  <  length;  ++ j)  
          {  
             if  (array[j]  <  array[i])  
              {  
                exchange  =   true ;  
                Swap( & array[j],  & array[i]);  
            }   
        }   
         //  如果这次遍历没有元素的交换,那么排序结束   
          if  ( false   ==  exchange)  
             break ;  
    }   
}   
 
从后往前版本
[cpp] view plaincopy
#include <stdio.h>;  
void bubble_sort(int arr[],int  count);  
  
  
void bubble_sort(int arr[],int  count)  
{  
    int i;int j;int temp;  
    for(i=0;i<count;i++)  
    {  
        for(j=count-1;j>i;j--)  
        {  
            if(arr[j]<arr[j-1])  
            {  
            temp=arr[j];  
            arr[j]=arr[j-1];  
            arr[j-1]=temp;  
            }  
        }  
    }  
}  
  
  
int main(void)  
{  
    int arr[]={1,5,2,4,3,8,6,7,9};  
    int count=sizeof(arr)/sizeof(int);  
      
    bubble_sort(arr,count);  
  
    int k;  
    for(k=0;k<count;k++)  
    {  
        printf("%d",arr[k]);  
    }  
    return 0;  
}  

 