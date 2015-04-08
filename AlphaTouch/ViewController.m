//
//  ViewController.m
//  AlphaTouch
//
//  Created by Christian on 4/5/15.
//  Copyright (c) 2015 Christian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 80, 100, 44)];
    label.text = @"Welcome!";
    [self.view addSubview:label];
    
    
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstButton.frame = CGRectMake(150, 100, 100, 44);
    firstButton.layer.cornerRadius = 10;
    firstButton.clipsToBounds = YES;
    [firstButton setTitle:@"Click Me!" forState:UIControlStateNormal];
    [firstButton setTitle:@"Ouch!" forState:UIControlStateHighlighted];
    [firstButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:firstButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView  // Called first time view property accessed
{
    //UIView *view = [[UIView alloc] initWithFrame:viewRect];
    //view.backgroundColor = [UIColor yellowColor];
    //self.viewController.view = view;
    
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
//    self.view.alpha = ((double)arc4random() / 0x100000000);
    NSLog(@"The touches ended!");
}

- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed, sender: %@", sender);
    self.view.alpha = ((double)arc4random() / 0x100000000);
}

@end
