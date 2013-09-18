/*---------------------------------------------------------
 Title: 单链表
 Fuction: 单链表的初始化，创建，插入，删除，查找结点。
 ----------------------------------------------------------*/
#include<stdio.h>
#include<stdlib.h>
struct nodetype//定义结点
{
 int data;//数据域（可以是int,char,float,数组，结构体等类型)
 struct nodetype * next;
 //next指针域，指向下一个结点。
};

struct nodetype * InitialLinkList()
{
//初始化链表，返回头指针
 struct nodetype * head;
 head=(struct nodetype *)malloc(sizeof(struct nodetype));//
 head->next=NULL;
 return head;
}

void CreateLinkListInRear(struct nodetype * head, int numbers[], 
                          int LengthOfNumbers)
{
    //尾接法创建单链表
    //从数组numbers[]中取出元素建立单链表
    //LengthOfNumbers为元素个数
    int i;
    struct nodetype * temp,* rear;
    rear=head;
    for(i=0;i<LengthOfNumbers;i++)
    {
        temp=(struct nodetype *)malloc(sizeof(struct nodetype));
        temp->data=numbers[i];
        temp->next=NULL;
        rear->next=temp;
        rear=temp;
    }
}

void CreateLinkListInHead(struct nodetype * head, int numbers[],
                          int LengthOfNumbers)
{
    //头插法建立单链表
    //从数组numbers[]中取出元素建立单链表
    //LengthOfNumbers为元素个数
    int i;
    struct nodetype * temp;
    for(i=0;i<LengthOfNumbers;i++)
    {
        temp=(struct nodetype *)malloc(sizeof(struct nodetype));
        temp->data=numbers[i];
        temp->next=head->next;
        head->next=temp;

    }
}

struct nodetype * SearchInLinkList(struct nodetype * head, int x)
{
    //在链表中查找x。成功返回结点指针，失败返回NULL。
    struct nodetype * p=head->next;
    while(p!=NULL)
    {
    if(p->data==x)
        return p;
    else
        p=p->next;
    }
    return NULL;

}

void InsertNumberIntoLinkList(struct nodetype * head,int key,int x)
{
 //在key之后插入x
 struct nodetype * location,*temp;
 if((location=SearchInLinkList(head,key))!=NULL)
    {
        temp=(struct nodetype *)malloc(sizeof(struct nodetype));
        temp->data=x;
        temp->next=location->next;
        location->next=temp;
    }
 else
     printf("\nNot Found, Insert failed!\n");
}

void DeleteNumberFromLinkList(struct nodetype * head,int x)
{
 //从链表中删除x。
 struct nodetype * p,*q;
 q=head;
 p=head->next;   
 while (p!=NULL && p->data!=x) 
  {q=p;
   p=p->next;
  }
 if(p!=NULL)
  {q->next=p->next;
   free(p); /*释放被删结点所占的内存空间*/
  }
 else
   printf("invaild delete position\n");
}

void PrintIntegerLinkList(struct nodetype * head)
{//显示链表结点数据
    struct nodetype *temp;
    temp=head->next;
    while(temp!=NULL)
    {
        printf("%d ",temp->data);
        temp=temp->next;
    }

}

void main()
{
 struct nodetype *head,*head2;
 int y[5]={4,5,6,7,8};
 head2=InitialLinkList();//初始化
 CreateLinkListInRear(head2,y,5);//以数组y中元素创建链表
 DeleteNumberFromLinkList(head2,6);//删除6
 PrintIntegerLinkList(head2);//显示删除6后链表
}
