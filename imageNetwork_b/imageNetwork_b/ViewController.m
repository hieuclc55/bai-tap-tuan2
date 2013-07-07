//
//  ViewController.m
//  imageNetwork_b
//
//  Created by hieuclc55 on 7/7/13.
//  Copyright (c) 2013 hieuclc55. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSString*string1,*string2,*string3,*string4,*string5,*string6,*string7,*string8,*string9,*string10;
    NSArray*linkweb;
    NSOperationQueue*operationqueue;
    NSInvocationOperation*invocationOperation;
}
-(void)loadimg:(NSString*)img;
@end

@implementation ViewController

- (void)viewDidLoad
{
    string1=@"http://www.lgbt.vn/wp-content/uploads/2013/05/phong-canh-tuyet-dep1-29d3f_tn.jpg";
    string2=@"http://www.lgbt.vn/wp-content/uploads/2013/05/phong-canh-tuyet-dep2-29d3f_tn.jpg";
    string3=@"http://www.lgbt.vn/wp-content/uploads/2013/05/phong-canh-tuyet-dep3-29d3f-1_tn.jpg";
    string4=@"http://www.lgbt.vn/wp-content/uploads/2013/05/phong-canh-tuyet-dep5-29d3f_tn.jpg";
    string5=@"http://www.lgbt.vn/wp-content/uploads/2013/05/phong-canh-tuyet-dep6-29d3f_tn.jpg";
    string6=@"http://www.lgbt.vn/wp-content/uploads/2013/05/phong-canh-tuyet-dep11-29d3f_tn.jpg";
    string7=@"http://www.lgbt.vn/wp-content/uploads/2013/05/phong-canh-tuyet-dep12-29d3f_tn.jpg";
    string8=@"http://www.lgbt.vn/wp-content/uploads/2013/05/phong-canh-tuyet-dep13-29d3f_tn.jpg";
    string9=@"http://www.lgbt.vn/wp-content/uploads/2013/05/phong-canh-tuyet-dep14-29d3f_tn.jpg";
    string10=@"http://www.lgbt.vn/wp-content/uploads/2013/05/phong-canh-tuyet-dep15-29d3f_tn.jpg";
    linkweb=[NSArray arrayWithObjects:string1,string2,string3,string4,string5,string6,string7,string8,string9,string10, nil];
    [super viewDidLoad];
    operationqueue=[[NSOperationQueue alloc]init];
    for (int i=0; i<11; i++) {
        NSString*img=[NSString stringWithFormat:@"%d",i];
        invocationOperation=[[NSInvocationOperation alloc]initWithTarget:self selector:@selector(loadimg:) object:img];
        [operationqueue addOperation:invocationOperation];
        [self.muscroll setContentSize:CGSizeMake(400*i, self.muscroll.frame.size.height)];
        [self.view addSubview:self.muscroll];
    }

	// Do any additional setup after loading the view, typically from a nib.
}
-(void)loadimg:(NSString*)img{
    int i=[img intValue];
    UIImageView*image =[[UIImageView alloc]initWithFrame:CGRectMake(i*400,0, 400, 500)];
    [image setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[linkweb objectAtIndex:i]]]]];
    [self.muscroll addSubview:image];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
