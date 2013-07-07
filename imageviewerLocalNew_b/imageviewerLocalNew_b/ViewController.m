//
//  ViewController.m
//  imageviewerLocalNew_b
//
//  Created by hieuclc55 on 7/7/13.
//  Copyright (c) 2013 hieuclc55. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSOperationQueue*operationqueue;
    NSInvocationOperation*invocationOperation;
}
-(void)loadimg:(NSString*)img;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    operationqueue=[[NSOperationQueue alloc]init];
    for (int i=0; i<13; i++) {
        NSString*img=[NSString stringWithFormat:@"%d",i];
        invocationOperation=[[NSInvocationOperation alloc]initWithTarget:self selector:@selector(loadimg:) object:img];
        [operationqueue addOperation:invocationOperation];
        [self.myscroll setContentSize:CGSizeMake(i*400,self.myscroll.frame.size.height)];
        [self.view addSubview:self.myscroll];
    }
    
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)loadimg:(NSString*)img
{
    int i=[img intValue];
    UIImageView*image =[[UIImageView alloc]initWithFrame:CGRectMake(i*400, 0, 400, 500)];
    NSString*temp =[NSString stringWithFormat:@"%d.jpg",i+1];
    [image setImage:[UIImage imageNamed:temp]];
    [self.myscroll addSubview:image];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
