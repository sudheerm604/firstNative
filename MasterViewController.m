//
//  MasterViewController.m
//  firstNative
//
//  Created by sudheer mangalpady on 9/19/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import "MasterViewController.h"
#import "AppDelegate.h"
#import "AccountViewController.h"
#import "RootViewController.h"
#import "ProductViewController.h"


@interface MasterViewController ()

@end

@implementation MasterViewController


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

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    NSUInteger row = [indexPath row];
    NSMutableArray *viewControllerArray = [[NSMutableArray alloc] initWithArray:self.splitViewController.viewControllers];
    
    [viewControllerArray removeLastObject];
    if (row == 0)
    {
        RootViewController *rVC = [[RootViewController alloc] initWithNibName:nil bundle:nil];
        [viewControllerArray addObject:rVC];
    } else if (row == 1)
    {
        AccountViewController *aVC = [[AccountViewController alloc] initWithNibName:nil bundle:nil];
        [viewControllerArray addObject:aVC];
    } else if (row == 2)
    {
        ProductViewController *pVC = [[ProductViewController alloc] initWithNibName:nil bundle:nil];
        [viewControllerArray addObject:pVC];
    }
    [[self splitViewController] setViewControllers:viewControllerArray];
    
    
    /*
    UIViewController *detailViewController = nil;
    if (row == 0)
    {
        RootViewController *rVC = [[RootViewController alloc] initWithNibName:nil bundle:nil];
        detailViewController = rVC;
    } else if (row == 1)
    {
        AccountViewController *aVC = [[AccountViewController alloc] initWithNibName:nil bundle:nil];
        detailViewController = aVC;
    }
    
    if (detailViewController!=nil)
    {
        NSArray *viewControllers = [[NSArray alloc] initWithObjects:self.navigationController, detailViewController, nil];
        self.splitViewController.viewControllers = viewControllers;
    }

    */
 

}
- (void)viewDidAppear:(BOOL)animated
{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [[self tableView] selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionBottom];
}

@end
