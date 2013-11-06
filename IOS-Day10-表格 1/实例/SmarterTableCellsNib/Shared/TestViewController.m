/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
//
//  TestViewController.m
//  SmarterTableCellsNib
//
//  Created by Matt Drance on 11/4/10.
//  Copyright 2010 Bookhouse Software, LLC. All rights reserved.
//

#import "TestViewController.h"

#import "PRPComplexTableViewCell.h"

@implementation TestViewController

@synthesize complexCellNib;

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PRPComplexTableViewCell *cell =
        [PRPComplexTableViewCell cellForTableView:tableView 
                                          fromNib:self.complexCellNib];

    cell.titleLabel.text = [NSString stringWithFormat:@"Cell #%d",
                            indexPath.row];
    cell.dateLabel.text =
        [NSDateFormatter localizedStringFromDate:[NSDate date] 
                                       dateStyle:NSDateFormatterNoStyle
                                       timeStyle:NSDateFormatterMediumStyle];
    cell.locationLabel.text = @"Places unknown";
    
    return cell;
}

#pragma mark -
#pragma mark Accessors

- (UINib *)complexCellNib {
    if (complexCellNib == nil) {
        self.complexCellNib = [PRPComplexTableViewCell nib];
    }
    return complexCellNib;    
}

- (void)viewDidUnload {
    [super viewDidUnload];
    self.complexCellNib = nil;
}

- (void)dealloc {
    [complexCellNib release], complexCellNib = nil;
    [super dealloc];
}


@end

