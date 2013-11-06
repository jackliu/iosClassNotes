/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
#import "PRPDoubleRainbowCell.h"

@implementation PRPDoubleRainbowCell

@synthesize mainImageView;
@synthesize altImageView;
@synthesize mainLabel;

- (void)dealloc {
    [mainImageView release], mainImageView = nil;
    [altImageView release], altImageView = nil;
    [mainLabel release], mainLabel = nil;

    [super dealloc];
}

- (id)initWithCellIdentifier:(NSString *)cellID {
    if ((self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID])) {
        UIImage *rainbow = [UIImage imageNamed:@"rainbow.png"];
        mainImageView = [[UIImageView alloc] initWithImage:rainbow];
        altImageView = [[UIImageView alloc] initWithImage:rainbow];
        
        CGRect iconFrame = (CGRect) { { 12.0, 4.0 }, rainbow.size };
        mainImageView.frame = iconFrame;
        iconFrame.origin.x = CGRectGetMaxX(iconFrame) + 9.0;
        altImageView.frame = iconFrame;

        [self.contentView addSubview:mainImageView];
        [self.contentView addSubview:altImageView];

        CGFloat labelX = CGRectGetMaxX(iconFrame);
        CGRect labelFrame = CGRectMake(labelX, 12.0, 180.0, 20.0);
        mainLabel = [[UILabel alloc] initWithFrame:labelFrame];
        mainLabel.font = [UIFont boldSystemFontOfSize:12.0];
        mainLabel.highlightedTextColor = [UIColor whiteColor];
        [self.contentView addSubview:mainLabel];
    }
    
    return self;
}

@end