//
//  ViewController.h
//  helloworld
//
//  Created by hieuclc55 on 7/2/13.
//  Copyright (c) 2013 hieuclc55. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)done:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *mytext;
@property (weak, nonatomic) IBOutlet UILabel *mylabel;

@end
