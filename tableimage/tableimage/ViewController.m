//
//  ViewController.m
//  tableimage
//
//  Created by hieuclc55 on 7/2/13.
//  Copyright (c) 2013 hieuclc55. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray*address;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    address =[NSArray arrayWithObjects:@"Da Lat",@"Nha Trang",@"Phan Thiet",@"Cua Lo",@"Ha Long",@"Vung Tau",@"Ca Mau",@"Da Nang",@"Sam Son",@"Cuc Phuong",@"SaPa",@"Moc Chau", nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView*)tableView{
    return 1;
};
-(NSInteger)tableView :(UITableView*) tableView numberOfRowsInSection:(NSInteger)section{
    return 12;
}
-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:@"maincell"];
    if(cell==nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"maincell"];
    }
    NSString*temp =[NSString stringWithFormat:@"%d.jpg",indexPath.row+1];
    
    UIImageView*image =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 50, 40)];
    [image setImage:[UIImage imageNamed:temp]];
    [cell addSubview:image];
    cell.textLabel.text=[NSString stringWithFormat:@"           %@",[address objectAtIndex:indexPath.row]];
    return cell;
}- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
