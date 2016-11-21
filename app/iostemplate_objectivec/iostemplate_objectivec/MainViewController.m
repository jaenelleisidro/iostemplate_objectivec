//
//  MainViewController.m
//  iostemplate_objectivec
//
//  Created by Jaenelle Isidro on 21/11/2016.
//  Copyright © 2016 Jaenelle Isidro. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
{
    NSArray *rows;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    rows = [NSArray arrayWithObjects:@"FirstList",@"SecondList",@"ThirdList",nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [rows count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [rows objectAtIndex:indexPath.row];
    return cell;
}

@end
