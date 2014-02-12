//
//  ViewController.m
//  SlidingCell
//
//  Created by Alexey Bondarenko on 2/12/14.
//  Copyright (c) 2014 Alexey Bondarenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *data;
}
@end

@implementation ViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    data = @[@"first slide",@"second slide",@"third slide",@"final"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    SCSlidingCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[SCSlidingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.dataSource = self;
    cell.delegate = self;
    cell.alignment = SCSlidingCellViewAligmentCenter;
    
    return cell;
}

#pragma mark - SCSlidingCellDataSource

-(NSUInteger)numberOfSlides
{
    return data.count;
}

-(UIView *)slideViewForIndex:(NSUInteger)index withFrame:(CGRect)frame;
{
    CGRect viewFrame = frame;
    viewFrame.size.width = 320;
    UIView *view = [[UIView alloc] initWithFrame:viewFrame];
    view.backgroundColor = [UIColor colorWithRed:1-0.1*index green:1-0.15*index blue:1-0.2*index alpha:1];
    UILabel  *textLabel = [[UILabel alloc] initWithFrame:view.bounds];
    textLabel.textColor = [UIColor darkTextColor];
    textLabel.textAlignment = NSTextAlignmentCenter;
    textLabel.text = data[index];
    [view addSubview:textLabel];
    return view;
}

-(void)slidingCell:(SCSlidingCell *)slidingCell didSelectedView:(UIView *)view
{
    NSLog(@"View %@ was selected", view);
}
@end
