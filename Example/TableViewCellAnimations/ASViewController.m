//
//  ASViewController.m
//  TableViewCellAnimations
//
//  Created by Adam Suskin on 11/22/2015.
//  Copyright (c) 2015 Adam Suskin. All rights reserved.
//

#import "ASViewController.h"

//Number of cells in example
#define NUM_OF_CELLS 50

@interface ASViewController ()

@end

@implementation ASViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

//Here is where you would add your animations
-(void)tableView:(UITableView *)tableView willDisplayCell:(nonnull UITableViewCell *)cell forRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    [(ASTableViewCell *)cell animate];
}

//return number of cells in example
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return NUM_OF_CELLS;
}

//just show the number of the cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ASTableViewCell *cell = (ASTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"CellIdentifier"];
    
    //Make sure to set the duration (defaults to 1.0s)
    [cell setDuration:1]; //really trying to make animation obvious
    
    //Making animation easier to see
    [[cell textLabel] setText:[NSString stringWithFormat:@"Cell %d", (int)indexPath.row]];
    [[cell textLabel] setTextColor:[UIColor redColor]];
    
    if(indexPath.row % 2 == 0)
        [cell setBackgroundColor:[UIColor lightGrayColor]];
    else
        [cell setBackgroundColor:[UIColor darkGrayColor]];
    
    //Adding the cell's animations
    [cell addAnimation:kASTableViewCellAnimationFlipHorizontally|kASTableViewCellAnimationFadeIn];
    
    return cell;
}

//simply deselect the cell
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end

