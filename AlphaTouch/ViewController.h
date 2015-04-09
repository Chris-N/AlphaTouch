//
//  ViewController.h
//  AlphaTouch
//
//  Created by Christian on 4/5/15.
//  Copyright (c) 2015 Christian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) UIButton *halfButton;
@property (weak, nonatomic) UIButton *fullButton;

- (void) buttonPressed:(UIButton *)sender;

@end

