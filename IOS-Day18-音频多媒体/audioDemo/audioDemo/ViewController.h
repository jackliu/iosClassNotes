//
//  ViewController.h
//  audioDemo
//
//  Created by shangdejigou on 13-11-13.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    BOOL isPress;
}

//改变文字
@property (strong, nonatomic) IBOutlet UIButton *btn;

//控制行为
- (IBAction)palyButton:(UIButton *)sender;





@end
