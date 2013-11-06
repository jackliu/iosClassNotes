//
//  NAViewController.h
//  NamesApp
//
//  Created by Tim Duckett on 04/02/2012.
//  Copyright (c) 2012 Tim Duckett / Charismatic Megafauna Ltd.
//  See license.txt for licensing information.

#import <UIKit/UIKit.h>

@interface NAViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

//每个章节中的行数据
@property (nonatomic, strong) NSArray *tableData;
//
@property (nonatomic, strong) UILocalizedIndexedCollation *collation;
//
@property (nonatomic, strong) NSMutableArray *outerArray;

//索引列数组
@property (nonatomic, strong) NSArray *indexTitlesArray;

@end





