//
//  Car.h
//  objc-demo
//
//  Created by liu on 13-4-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Vehicle.h"

@interface Car : Vehicle

//乘坐人数
@property(nonatomic,assign)int passenger_load;

//初始化函数
-(Car *)init;
-(Car *)initWithWheels:(int) _wheels
             andWeight:(double)_weight
          andPassenger:(int) _passengerLoad;


@end




