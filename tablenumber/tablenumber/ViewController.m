//
//  ViewController.m
//  tablenumber
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
-(NSInteger)numberOfSectionsInTableView:(UITableView*)tableView{
    return 1;
};
-(NSInteger)tableView :(UITableView*) tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}
-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:@"maincell"];
    if(cell==nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"maincell"];
    }
    cell.textLabel.text=[NSString stringWithFormat:@"%d",indexPath.row+1];
    return cell;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
