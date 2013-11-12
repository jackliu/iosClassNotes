//
//  ViewController.h
//  JSONDemo
//
//  Created by shangdejigou on 13-11-11.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//JSON 文本中的内容
@property(strong,nonatomic)NSData *jsonContent;

@property (strong, nonatomic) IBOutlet UITextView *textview;

- (IBAction)buttonPress:(UIButton *)sender;

@end




