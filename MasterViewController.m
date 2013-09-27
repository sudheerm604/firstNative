//
//  MasterViewController.m
//  firstNative
//
//  Created by sudheer mangalpady on 9/19/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewManager.h"

#import "ContactsViewController.h"
#import "AccountsViewController.h"


@interface MasterViewController ()
{
    NSArray *arrayOfMainViewItems;
}
@end

@implementation MasterViewController

// -------------------------------------------------------------------------------
//	shouldAutorotateToInterfaceOrientation:
// -------------------------------------------------------------------------------
/*
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

*/
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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    arrayOfMainViewItems = [NSArray arrayWithObjects:@"Contacts", @"Accounts", @"Products", @"Availability", @"Pricing", @"Maps", nil];
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
    return [arrayOfMainViewItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    [[cell textLabel] setText:[arrayOfMainViewItems objectAtIndex:[indexPath row]]];
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    DetailViewManager *detailViewManager = (DetailViewManager*)self.splitViewController.delegate;
    
    NSUInteger row = indexPath.row;
    
    // Create and configure a new detail view controller appropriate for the selection.
    UIViewController <SubstitutableDetailViewController> *detailViewController = nil;
    
    if (row == 0) {
        
        
        ContactsViewController *newDetailViewController = [[ContactsViewController alloc] initWithNibName:nil bundle:nil];
        
        detailViewController = newDetailViewController;
        detailViewManager.detailViewController = detailViewController;
        
    }
    else if (row == 1)
    {
        AccountsViewController *newDetailViewController = [[AccountsViewController alloc] initWithNibName:nil bundle:nil];
        
        
        detailViewController = newDetailViewController;
        detailViewManager.detailViewController = detailViewController;
        
        
    }

}
- (void)viewDidAppear:(BOOL)animated
{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [[self tableView] selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionBottom];
}

@end
