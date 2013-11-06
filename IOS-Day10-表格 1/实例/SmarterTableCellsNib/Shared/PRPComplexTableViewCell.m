/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
//
//  PRPComplexTableViewCell.m
//  SmarterTableCellsNib
//
//  Created by Matt Drance on 8/10/10.
//  Copyright 2010 Bookhouse Software, LLC. All rights reserved.
//

#import "PRPComplexTableViewCell.h"

@implementation PRPComplexTableViewCell

@synthesize titleLabel, dateLabel, locationLabel;

- (void)dealloc {
    [titleLabel release], titleLabel = nil;
    [dateLabel release], dateLabel = nil;
    [locationLabel release], locationLabel = nil;
    [super dealloc];
}

@end