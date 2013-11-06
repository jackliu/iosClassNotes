/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
//
//  PRPRainbowTableViewController.m
//  SmarterTableCells
//
//  Created by Matt Drance on 8/2/10.
//  Copyright 2010 Bookhouse Software, LLC. All rights reserved.
//

#import "PRPRainbowTableViewController.h"
#import "PRPDoubleRainbowCell.h"

@implementation PRPRainbowTableViewController

@synthesize quotes;

- (void)dealloc {
    [quotes release], quotes = nil;
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Colorful Cells";
    self.quotes = [NSArray arrayWithObjects:@"DOUBLE RAINBOW!",
                   @"IT'S INTENSE!",
                   @"OHHHHHHH WOW!",
                   @"FULL ON!",
                   @"WHAT DOES THIS MEAN?",
                   nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.quotes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PRPDoubleRainbowCell *cell = [PRPDoubleRainbowCell 
                                  cellForTableView:tableView];
    cell.mainLabel.text = [self.quotes objectAtIndex:indexPath.row];
    return cell;    
}

@end