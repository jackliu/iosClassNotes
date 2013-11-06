/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
//
//  RootViewController.m
//  CellSubviewLocation
//
//  Created by Matt Drance on 9/9/10.
//  Copyright 2010 Bookhouse Software, LLC. All rights reserved.
//

#import "RootViewController.h"
#import "CustomTableCell.h"
#import "UITableView+PRPSubviewAdditions.h"

@implementation RootViewController


#pragma mark -
#pragma mark View lifecycle

@synthesize cellNib;
@synthesize customCell;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cellNib = [UINib nibWithNibName:@"CustomCell" bundle:nil];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    self.cellNib = nil;
    self.customCell = nil;
}

#pragma mark -
#pragma mark Table view data source

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    CustomTableCell *cell = (CustomTableCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        [self.cellNib instantiateWithOwner:self options:nil];
        cell = self.customCell;
        self.customCell = nil;
    }
    
	// Configure the cell.
    cell.titleLabel.text = [NSString stringWithFormat:@"Row %d", indexPath.row];
    return cell;
}

- (IBAction)cellButtonTapped:(id)sender {
    UIButton *button = sender;
    CGPoint correctedPoint = 
      [button convertPoint:button.bounds.origin toView:self.tableView];
    NSIndexPath *indexPath = 
      [self.tableView indexPathForRowAtPoint:correctedPoint];
    NSLog(@"Button tapped in row %d", indexPath.row);
}

- (void)dealloc {
    [cellNib release], cellNib = nil;
    [super dealloc];
}


@end

