//
//  main.m
//  ocDay5
//
//  Created by liu on 13-10-10.
//  Copyright (c) 2013年 liu. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Teacher.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //知识点一：多态的定义
        //使用多态的语法定义 三个对象
        //父类类型  引用  子类对象
        Person *p1 = [[Person alloc]init] ;
        Person *p2 = [[Student alloc]init] ;
        Person *p3 = [[Teacher alloc]init] ;
        
        //知识点二：方法的重写(父子类之间)
        //好处：子类可以扩展父类中已经实现的方法
        //1、运行前，先在 父类中找 printMessage 方法，找不到，报错
        //          如果父类中，没有出现过的方法，无法调用
        //2、运行中，在后面对象中找 printMessage 方法，
        //   情况一，在 子类对象中找不到 方法，调用父类中定义的方法
        //   情况二，在 子类对象中找到   方法，调用子类自己的方法
        [p1 printMessage];
        [p2 printMessage];
        [p3 printMessage];
        
        [p2 printMessage];  //为什么 p2 ，调用不到 sayhello 方法
        
        //知识点三：动态数据类型--万能类型
        // id 类型的对象定义、方法的调用 都是在运行时动态进行的
        //编译时：炒菜前的买、洗的过程
        //运行时：下锅炒的过程
        NSObject *o1 = [[Person alloc]init];
        NSObject *o2 = [[Student alloc]init];
        //[o1 printMessage];
        
        //(NSObject *) 类型，简化为 id
        //id 保存对象所分配内存的首地址
        id i1 = [[Person alloc]init];
        id i2 = [[Student alloc]init];
        
        //知识点四、动态类型判断，编译时检查
        //1、编译器运行前，先把 id 替换成后面对象的类型
        //Person *i1 = [[Person alloc]init];
        [i1 printMessage];
        //Student *i2 = [[Studnet alloc]init];
        [i2 printMessage];
        [i2 sayhello];
        
        
        //知识点五、代码判断对象的类型
        id tt = [[Teacher alloc]init];
        
        //方法一、比较类的名称
        //动态判断 tt 的 类型
        if ([tt isKindOfClass:[Teacher class]] == YES) {
            NSLog(@"tt 是一个 Teacher 类型的对象");
        }else
        {
            NSLog(@"tt不是 Teacher 类型的对象  ");
        }
        
        if ([tt isKindOfClass:[Person class]] == YES) {
            NSLog(@"tt 是一个 Person 类型的对象");
        }else
        {
            NSLog(@"tt不是 Person 类型的对象  ");
        }
        
        //方法二、比较类内部的成员
        //动态判断 tt 的成员(属性、行为)
        id p = [[Person alloc]init];
        if ([p isMemberOfClass:[Person class]] == YES) {
            NSLog(@"p 对象中，有与 Person 相同的属性成员和方法成员");
        }
        
        //selector 指通过对象，调用的方法的名称
        //[p ]
        
        //方法三、判断某个对象中，是否有指定的方法
        //@selector() 叫选择器，内部传递方法的名称和参数
        if ([p respondsToSelector:@selector(haha)]) {
            NSLog(@"Person 类中，有 sayhello 方法");
        }else
        {
            NSLog(@"Person 类中，没有 sayhello 方法");
        }
        
        //方法四、间接调用某个对象中的方法
        //对象直接调用指定方法
        [p printMessage];
        //通过任意一个对象，间接来调用指定方法，并可以指定延迟执行的时间
        //[tt performSelector:@selector(printMessage) withObject:p afterDelay:10000];
        [tt performSelector:@selector(printMessage) withObject:p];
        
        
        //知识点六、方法的重载
        //前提：在同一个类中才会出现重载
        //重载指 同一个类中，多个方法，名称相同，参数列表不同
        id tea = [[Teacher alloc]init];
        [tea say:@"小明"];
        [tea say:@"小红" :5];
        
        
        
    }
    return 0;
}







