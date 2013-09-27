//
//  AccountsViewController.h
//  firstNative
//
//  Created by sudheer mangalpady on 9/27/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewManager.h"
#import "SFRestAPI.h"

@interface AccountsViewController : UIViewController <SubstitutableDetailViewController, SFRestDelegate, UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

/// SubstitutableDetailViewController
@property (nonatomic, retain) UIBarButtonItem *navigationPaneBarButtonItem;
@property (nonatomic, strong) NSArray *dataRows;


@end
