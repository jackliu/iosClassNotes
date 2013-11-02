//
//  LayerFunViewController.m
//  LayerFun
//
//  Created by Ray Wenderlich on 12/16/10.
//  Copyright 2010 Ray Wenderlich. All rights reserved.
//

#import "LayerFunViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "Common.h"

@implementation LayerFunViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    
    //得到当前 View 的 layer (图层)
    self.view.layer.backgroundColor = [UIColor orangeColor].CGColor;
    self.view.layer.cornerRadius = 20.0; //圆角半径
    self.view.layer.frame = CGRectInset(self.view.layer.frame, 20, 20);   //图层的尺寸

    //自己新建的一个图层
    CALayer *sublayer = [CALayer layer];
    sublayer.backgroundColor = [UIColor blueColor].CGColor;
    //设置阴影
    sublayer.shadowOffset = CGSizeMake(0, 3);
    sublayer.shadowRadius = 15.0;
    sublayer.shadowColor = [UIColor blackColor].CGColor;
    sublayer.shadowOpacity = 0.95;  //透明度
    sublayer.frame = CGRectMake(30, 30, 128, 192);
    sublayer.borderColor = [UIColor blackColor].CGColor;
    sublayer.borderWidth = 2.0;
    sublayer.cornerRadius = 10.0;  
    [self.view.layer addSublayer:sublayer];

    
    CALayer *imageLayer = [CALayer layer];
    imageLayer.frame = sublayer.bounds;
    imageLayer.cornerRadius = 10.0;
    imageLayer.contents = (id) [UIImage imageNamed:@"BattleMapSplashScreen.png"].CGImage;
    imageLayer.masksToBounds = YES;
    //把图片的图层，添加到 上面图层中，图片可以带阴影效果
    [sublayer addSublayer:imageLayer];
    
         
    [super viewDidLoad];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
