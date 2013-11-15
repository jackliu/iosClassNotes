//
//  LLLViewController.h
//  ios-05-23-mytableViewCell
//
//  Created by liu on 13-5-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LLLViewController : UIViewController<UITableViewDataSource>



@property (strong, nonatomic) IBOutlet UITableView *mytable;

@property(strong,nonatomic)NSArray *mydatas;

@end


