/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
#import "RootViewController.h"
#import "PRPSmartTableViewCell.h"
#import "PRPRainbowTableViewController.h"

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Smart Table Cells";
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //一句话创建一个单元格
    UITableViewCell *cell = [PRPSmartTableViewCell cellForTableView:tableView];
    
    //使用单元格
    cell.textLabel.text = [NSString stringWithFormat:@"Row %d", indexPath.row + 1];
    cell.detailTextLabel.text = NSStringFromClass([cell class]);
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    PRPRainbowTableViewController *rainbowTable = [[PRPRainbowTableViewController alloc] initWithStyle:UITableViewStylePlain];
    [self.navigationController pushViewController:rainbowTable animated:YES];
    [rainbowTable release];
}

@end