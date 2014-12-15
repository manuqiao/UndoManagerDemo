//
//  ViewController.m
//  UndoManagerDemo
//
//  Created by qiaorujia on 14/12/15.
//  Copyright (c) 2014年 ShellColr. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)randomTapped:(id)sender {
    NSInteger randomNumber = arc4random() % 100;
    NSString *string = [NSString stringWithFormat:@"%ld", randomNumber];
    
    _label.text = string;
}

- (IBAction)undoTapped:(id)sender {
    
}

- (IBAction)redoTapped:(id)sender {
    
}

@end
