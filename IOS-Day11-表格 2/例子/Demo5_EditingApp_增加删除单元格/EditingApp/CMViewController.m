//
//  CMViewController.m
//  EditingApp
//
//  Created by TimD on 05/02/2012.
//  Copyright (c) Tim Duckett / Charismatic Megafauna Ltd. Some rights reserved.
//  See License.txt for licensing information.


#import "CMViewController.h"

@implementation CMViewController

@synthesize tableData;
@synthesize theTableView;

#pragma mark - Table view methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableData count] + 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"cellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    //要实现增加单元格的功能，这里判断，增加前、增加后
    if (indexPath.row == [self.tableData count]) {
        cell.textLabel.text = @"Add new row";
        cell.textLabel.textColor = [UIColor darkGrayColor];
    } else {
        cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    }
    
    return cell;
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //点击最后一行的时候，修改 Edit 按钮的状态
    if (indexPath.row == [self.tableData count]) {
        
        // Puts table into editing mode
        [self setEditing:YES animated:YES];
        
    } else {
        //点击其他行可以在这里写代码
        // Handle "normal" selection
        
    }
}
 

#pragma mark - Table editing methods

//1、启动表格的编辑模式
//会出现删除 图标、点击删除按钮，不能实现删除效果
-(void)setEditing:(BOOL)editing animated:(BOOL)animated {
    [super setEditing:editing animated:animated];
    [theTableView setEditing:editing animated:animated];
}

//2、允许修改单元格
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}


//3、实现删除
/*
 在这删除行的方法又出现了一个常量：UITableViewRowAnimationAutomatic，它表示删除时的效果，类似的常量还有：
 UITableViewRowAnimationAutomatic
 UITableViewRowAnimationTop
 UITableViewRowAnimationBottom
 UITableViewRowAnimationLeft
 UITableViewRowAnimationRight
 UITableViewRowAnimationMiddle
 UITableViewRowAnimationFade
 UITableViewRowAnimationNone
 */
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSArray *indexPathArray = [NSArray arrayWithObject:indexPath];
    
    //如果状态是 删除 状态，就删除
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //得到要删除的 行号
        [self.tableData removeObjectAtIndex:indexPath.row];
        //使用 UITableView 自带的动画效果实现删除
        [tableView deleteRowsAtIndexPaths:indexPathArray withRowAnimation:UITableViewRowAnimationAutomatic];
        
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
        NSString *theObjectToInsert = [NSString stringWithFormat:@"%@", [NSDate date]];
        [self.tableData addObject:theObjectToInsert];
        //使用表格自带动画，插入新行数据
        [tableView insertRowsAtIndexPaths:indexPathArray withRowAnimation:UITableViewRowAnimationAutomatic];
        
    }
}



/////////////////////////////////////

//移动某一行
//1、先修改每个单元格前面的删除的图标
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (self.editing) {
        //最后一行，单独设置  单元格图标为 +
        if (indexPath.row == [self.tableData count]) {
            return UITableViewCellEditingStyleInsert;
        } else {
            //其他行前面，图标全部为 -
            return UITableViewCellEditingStyleDelete;
        }
    }
    
    return UITableViewCellEditingStyleNone;
    
}

//2、返回当前Cell是否可以移动
-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    //最后一行，设置为不可以移动，这样，最后一行就不会出现移动图标 ==
    if (indexPath.row == [self.tableData count]) {
        return NO;
    }
    
    return YES;
}



//3、执行移动操作
-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    
    [self.tableData insertObject:[self.tableData objectAtIndex:sourceIndexPath.row] atIndex:destinationIndexPath.row];
    [self.tableData removeObjectAtIndex:(sourceIndexPath.row + 1)];
    
}

//移动过程中执行的方法
-(NSIndexPath *)tableView:(UITableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath {
    
    NSLog(@"移动了...");
    if (proposedDestinationIndexPath.row == [self.tableData count]) {
        return sourceIndexPath;
    }
    
    return proposedDestinationIndexPath;
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"Row insertion";
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.tableData = [[NSMutableArray alloc] initWithObjects:@"One", @"Two", @"Three", @"Four", @"Five", nil];
}

- (void)viewDidUnload
{
    [self setTheTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.tableData = nil;
    self.theTableView = nil;
    
}

@end
