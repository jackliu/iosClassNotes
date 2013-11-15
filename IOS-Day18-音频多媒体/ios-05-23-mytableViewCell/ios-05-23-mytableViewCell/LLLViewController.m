//
//  LLLViewController.m
//  ios-05-23-mytableViewCell
//
//  Created by liu on 13-5-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "LLLViewController.h"

@interface LLLViewController ()

@end

@implementation LLLViewController

@synthesize mytable,mydatas;

- (void)viewDidLoad
{
    [super viewDidLoad];
	//
    [self getDatas];
    self.mytable.dataSource = self;
}

-(void)getDatas
{
    mydatas = [NSArray arrayWithObjects:@"aaa",@"bbb",@"ccc",@"ddd",@"eee", nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [mydatas count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSUInteger row = indexPath.row;
    
   //从 xib 文件中取出 组件
    UIImageView *imgView = (UIImageView *)[cell.contentView viewWithTag:1001];
    NSString *imgName = [NSString stringWithFormat:@"png%d.png",row];
    [imgView setImage:[UIImage imageNamed:imgName]];
    
    UILabel *titleLbl = (UILabel *)[cell.contentView viewWithTag:1002];
    titleLbl.text = [mydatas objectAtIndex:row];
    
    UILabel *userNameLbl = (UILabel *)[cell.contentView viewWithTag:1003];
    
    NSString *userName = [NSString stringWithFormat:@"玩玩%d",row];
    userNameLbl.text = userName;
    
    return cell;
}



@end
