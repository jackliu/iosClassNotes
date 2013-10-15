//
//  main.m
//  ocDay9NStringNSArray
//
//  Created by liu on 13-10-15.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StringWork5_1.h"

#import "MusicConllection.h"
#import "Song.h"
#import "PlayList.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        /*
        NSLog(@"Demo1 ------------------------");
        //求用户输入的任意字符串，长度
        //用户输入一个 index 索引，求出对应位置的字符
        //从这个字符往后截取
        //从这个字符往前截取
        //比较输入字符串与 "admin" ，看是否相同
        
        //1 用户输入一个字符串
        NSLog(@"请输入一个字符串!");
        char  cstr[80];
        scanf("%s",cstr);
        NSLog(@"%s",cstr);
        //2 把 c 字符串转换为 oc 字符串
        NSString *ocstr = [NSString stringWithUTF8String:cstr];
        NSLog(@"%@",ocstr);
        //3 用户输入下标索引
        int index = 0;
        NSLog(@"请输入下标索引");
        scanf("%d",&index);
        //4 根据 index 求出对应位置字符
        char c = [ocstr characterAtIndex:index];
        NSLog(@"指定位置 %d ，对应的字符为 %c ",index,c);
        //5 截取字符串
        NSString *str1 = [ocstr substringFromIndex:index];
        NSString *str2 = [ocstr substringToIndex:index];
        NSRange range = {index,2};
        NSString *str3 = [ocstr substringWithRange:range];
        NSLog(@"截取字符串，从 index 到最后为%@，从开头到 index 为 %@，从中间为 %@",str1,str2,str3);
        
        
        
        NSLog(@"Demo2 字符串不变性------------------------");
        //调用 alloc ，在内存中分配独立空间
        NSString *nsstr = [[NSString alloc]init];
        nsstr = @"hello";
        
        
        
        NSString *nsstr2 = @"hello";
        //?? 上面 三行代码，在堆区分配了  2 块内存
        //在 常量区，字符串常量池中，有   1 块内存
        
        //比较的是两个 堆内存中的对象，是否 保持了 相同的 “字符串常量”
        //equal 比较字符串内容
        BOOL b = [nsstr isEqualToString:nsstr2];
        
        
        //界面输入的内容，全部默认是 NSString
        NSString *ss = @"12.5";
        //转换后，才能进行数学运算
        double d = [ss doubleValue];
        
        

        
        NSLog(@"作业1  ------------------------");
        
        // 从字符串”helloasdhfjadfklajflkajlasdkjfalkfj” 中找出有多少个 ‘l’
        // 用 for 循环，一个一个字符的判断
        NSString *worstr1 = @"helloasdhfjadfklajflkajlasdkjfalkfj";
        int len = [worstr1 length];
        //转换为 C  字符串数组
        const char *carr = [worstr1 UTF8String];
        //循环每个字符，一一判断
        int count =0;
        for (int i=0; i<len;i++) {
            char c = carr[i];
            if (c == 'l') {
                count++;
            }
        }
        NSLog(@"字符串中，有 %d 个 l ",count);
        
        
        NSLog(@"作业2  ------------------------");
        
         //判断一个新注册的用户名是否有效，长度不少于 6 位，包含数字、字母、_
         
        NSLog(@"请输入一个字符串!");
        char  cname[80];
        scanf("%s",cname);
        //2 把 c 字符串转换为 oc 字符串
        NSString *ocname = [NSString stringWithUTF8String:cname];
        //3 判断字符串长度
        if ([ocname length]<6) {
            NSLog(@"用户名长度不够，请重新输入");
        }
        else{
            int numCount =0;
            int charCount = 0;
            int aCount = 0;
            for (int i=0; i<[ocname length]; i++) {
                char c = cname[i];
                //判断是否是数字
                if (c>=0 && c<=9) {
                    numCount++;
                }
                //判断字母
                if ((c>='a'&& c<='z') || (c>='A'&& c<='Z')) {
                    charCount++;
                }
                //判断下划线
                if (c =='_') {
                    aCount++;
                }
                
            }
            if (numCount > 0 && charCount>0 && aCount>0) {
                NSLog(@"用户名符合要求");
            }else
            {
                NSLog(@"用户名不符合要求");
            }
        }
        
        
        NSLog(@"作业3  ------------------------");
        NSLog(@"请输入原字符串，被替换子字符串，替换后的子字符串，用 , 分割");
        char c1 [30];  //原字符串
        char c2 [10];  //被替换子字符串
        char c3 [10];  //替换后的子字符串
        scanf("%s,%s,%s",c1,c2,c3);
        
        NSString *s1 = [NSString stringWithUTF8String:c1];
        NSString *s2 = [NSString stringWithUTF8String:c2];
        NSString *s3 = [NSString stringWithUTF8String:c3];
        
        StringWork5_1 *work = [[StringWork5_1 alloc]init];
        NSString *returnStr = [work changeSubString:s1 :s2 :s3];
        
        if (returnStr == nil) {
            NSLog(@"替换失败");
        }else
        {
            if ([returnStr isEqualToString:s1]) {
                    NSLog(@"替换失败，没有在原字符串中找到 被替换的子字符串 ");
            }else
            {
                NSLog(@"替换成功，替换后的字符串为 ");
            }
        }
        */
        
        
        
        //知识点一：集合对象的创建
        //集合对象存放 对象的对象，里面只能放入对象类型
        //错误
        //NSArray *arr = @[12,34.5f,100];
        NSArray *arr = @[[NSNumber numberWithInt:12],[NSNumber numberWithUnsignedChar:'d']];
        
        //调用类方法创建一个数组对象，数组中只能放入对象，以 nil 结尾
        //数组创建完毕，长度固定,nil 结束标记，不占位数
        //创建一个包含月份的数组
        //方法一、使用类方法创建
        NSArray *monthNames = [NSArray  arrayWithObjects:@"January",
                               @"February",@"March",@"April",@"May",
                               @"June",@"July",@"August",
                               @"September",@"October",@"November",
                               @"December",nil];
        NSUInteger count =  [monthNames count];
        NSLog(@"数组长度为 %lu ",count);
        //循环数组，并输出月份
        NSLog(@"Month  Name");
        NSLog(@"=================");
        
        //循环一
        for(int i =0;i<12;i++)
        {
            //使用下标从数组中访问值  objectAtIndex:
            NSLog(@"%2i   %@",i+1,[monthNames  objectAtIndex:i]);
        }
        
        //方法二、使用初始化方法创建
        NSArray *monthNames2 = [[NSArray alloc]initWithObjects:@"January",
                                @"February",@"March",@"April",@"May",
                                @"June",@"July",@"August",
                                @"September",@"October",@"November",
                                @"December",nil];
        //循环二，快速枚举
        for (NSString *temp in monthNames2) {
            NSLog(@"temp  =  %@",temp);
            
        }
        
        //方法三、简化版的 init 方法
        NSArray *mounthName3 =@[[NSNumber numberWithInt:12],[NSNumber numberWithUnsignedChar:'d'],@"January"];
        
        
        
        
        //--------------------------------------
        //创建歌曲对象
        Song *s1 = [[Song alloc]init];
        [s1 setSongName:@"The Look of Love"];
        [s1 setSonger:@"Diana Krall"];
        [s1 setCdName:@"爵士"];
        [s1 setTimes:20];
        
        Song *s2 = [[Song alloc]init];
        
        Song *s3 = [[Song alloc]init];
        
        //5 个 歌曲对象
        
        //创建 PlayList 对象
        PlayList *list1  = [[PlayList alloc]init];
        [list1 setListName:@"安静的蓝调"];
        //播放列表中的所有歌曲
        //NSArray *sonArr = @[s1,s2,s3];
        
        //如何添加新的歌曲?
        NSMutableArray *sonArr = [NSMutableArray arrayWithCapacity:20];
        [sonArr addObject:s1];
        [sonArr addObject:s1];
        
        
        [list1 setSongArr:sonArr];
        
        PlayList *list2  = [[PlayList alloc]init];
        
        PlayList *list3  = [[PlayList alloc]init];
        
        
        //创建 MusicCollection 对象
        MusicConllection *musics = [[MusicConllection alloc]init];
        [musics setCollectionName:@"安静"];
        NSArray *listArr = @[list1,list2,list3];
        [musics setListArr:listArr];
        
        
        
    }
    
    
    return 0;
}




