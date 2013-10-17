//
//  Car.h
//  ocDay10
//
//  Created by liu on 13-10-16.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property(nonatomic,retain)NSString *name;
@property(nonatomic,assign)NSNumber *price;
//补充排量属性


//比较方法可以扩展
//按照价格进行比较
-(NSComparisonResult)compareByPrice:(Car *)otherCar;

//按照排量进行比较



-(void)drive;
-(void)stop;



@end







