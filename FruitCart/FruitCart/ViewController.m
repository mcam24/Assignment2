//
//  ViewController.m
//  FruitCart
//
//  Created by David Evans on 1/29/13.
//  Copyright (c) 2013 DavidEvans. All rights reserved.
//

#import "ViewController.h"
#import "Vegetable.h"
#import "Onion.h"
#import "Potato.h"
#import "Pumpkin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _cart = [NSMutableArray arrayWithCapacity:0];
    
    Pumpkin * pumpkin1 = [[Pumpkin alloc] init];
    Potato * potato1 = [[Potato alloc] init];
    Onion * onion1 = [[Onion alloc] init];
    
    [_cart addObject:pumpkin1];
    [_cart addObject:potato1];
    [_cart addObject:onion1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Vegetable";
}

-(int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_cart count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"TableViewCell"];
    }
    
    Vegetable * tempVegie = [_cart objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [tempVegie name];
    cell.detailTextLabel.text = [tempVegie color];
    return cell;
}

@end
