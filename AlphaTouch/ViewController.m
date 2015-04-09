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
    
    
    self.halfButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.halfButton.frame = CGRectMake(150, 100, 100, 44);
    self.halfButton.backgroundColor = [UIColor whiteColor];
    self.halfButton.layer.cornerRadius = 10;
    self.halfButton.clipsToBounds = YES;
    [self.halfButton setTitle:@"Click Me!" forState:UIControlStateNormal];
    [self.halfButton setTitle:@"Ouch!" forState:UIControlStateHighlighted];
    [self.halfButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.fullButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.fullButton.frame = CGRectMake(150, 300, 100, 44);
    self.fullButton.backgroundColor = [UIColor whiteColor];
    self.fullButton.layer.cornerRadius = 10;
    self.fullButton.clipsToBounds = YES;
    [self.fullButton setTitle:@"Make 100%" forState:UIControlStateNormal];
    [self.fullButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.halfButton];
    [self.view addSubview:self.fullButton];
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
    //self.view.alpha = ((double)arc4random() / 0x100000000);
    if([sender isEqual:self.fullButton]){
        self.view.alpha = 1;
    }else{
        self.view.alpha = 0.5;
    }
}

@end
