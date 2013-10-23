//
//  UserModel.m
//  ios-05-28-XMLDemo
//
//  Created by liu on 13-5-28.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "UserModel.h"
//导入 专门的 DOM 解析库
#import "GDataXMLNode.h"

@implementation UserModel

//使用 xml DOM 模型，打印 xml 中的数据
-(void)printXMLUseDom
{
    //按照 DOM 模型--树状模型
    //1 得到 xml 文档
    //得到文件的名字
    NSString *fileName = [[NSBundle mainBundle]pathForResource:@"user" ofType:@"xml"];
    //根据名字，得到文件中的数据
    NSData *xmlData = [[NSData alloc]initWithContentsOfFile:fileName];
    //根据数据，创建一个 xml 文档对象
    //该 xmlDocument 对象中，包含所有 xml 中的文本内容
    GDataXMLDocument *doc = [[GDataXMLDocument alloc]initWithData:xmlData options:0 error:nil];

    //2 从文档中取出 根节点 --root <users>...</users>
    GDataXMLElement *root = [doc rootElement];
    
    //3 从根节点中找到子节点，如果有多个，循环-遍历
    //按照元素名 <user> 找
    NSArray *userArr = [root elementsForName:@"user"];
    NSLog(@"在 XML 中，有 %i 个用户",[userArr count]);
    
    //单独操作一个 user ,排第一的 张飞
    GDataXMLElement *firstElemtnt = [[root elementsForName:@"user"]objectAtIndex:0];
    //找张飞的姓名<name>，年龄<age>
    GDataXMLElement *name = [[firstElemtnt elementsForName:@"name"]objectAtIndex:0];
    GDataXMLElement *age = [[firstElemtnt elementsForName:@"age"]objectAtIndex:0];
    
    NSLog(@"排第一的人，姓名 %@ ,年龄 %@",[name stringValue],[age stringValue]);
    

    /////循环所有
    NSInteger indexNum = 0;
    for (GDataXMLElement *temp in userArr) {
        indexNum++;
        NSLog(@"--------------------");
        //循环一次，得到一个用户 <user>...</user>
        //得到 <name>   <age> 属性的值
        GDataXMLElement *name = [[temp elementsForName:@"name"]objectAtIndex:0];
        GDataXMLElement *age = [[temp elementsForName:@"age"]objectAtIndex:0];
        
        NSLog(@"排第 %i 的人，姓名 %@ ,年龄 %@",indexNum,[name stringValue],[age stringValue]);
    }
    
    
    ///按照元素属性取值，按照 id="002" 找根下面的
    /*
     <user id="002">
        <name>刘备</name>
        <age>20</age>
     </user>
     */
    //先按照 元素名，找到 <user> 元素
GDataXMLElement *liu = [[root elementsForName:@"user"]objectAtIndex:1];
    //取出 liu 标签中的 id 属性值
    NSString *idValue = [[liu attributeForName:@"id"]stringValue];
//<name>刘备</name>
GDataXMLElement *liuname = [[liu elementsForName:@"name"]objectAtIndex:0];
NSLog(@"%@ 的 id 为 %@",[liuname stringValue],idValue);

}




@end



