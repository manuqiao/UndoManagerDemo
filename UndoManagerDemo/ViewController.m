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
    _undoManager = [NSUndoManager new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - Custom Methods

- (void)setLabelText:(NSString *)string
{
    [[_undoManager prepareWithInvocationTarget:self] setLabelText:string];
    [_undoManager setActionName:@"label change"];
    
    _label.text = string;
}

# pragma mark - Button Selectors

- (IBAction)randomTapped:(id)sender {
    NSInteger randomNumber = arc4random() % 100;
    NSString *string = [NSString stringWithFormat:@"%ld", randomNumber];
    
    [self setLabelText:string];
}

- (IBAction)undoTapped:(id)sender {
    [_undoManager undo];
}

- (IBAction)redoTapped:(id)sender {
    [_undoManager redo];
}

@end
