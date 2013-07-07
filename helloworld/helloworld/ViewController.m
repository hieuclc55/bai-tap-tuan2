//
//  ViewController.m
//  helloworld
//
//  Created by hieuclc55 on 7/2/13.
//  Copyright (c) 2013 hieuclc55. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)done:(id)sender {
    _mylabel.text=[NSString stringWithFormat:@"hello %@",_mytext.text];
}
@end
