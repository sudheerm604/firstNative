//
//  ProductViewController.h
//  firstNative
//
//  Created by sudheer mangalpady on 9/20/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SFRestAPI.h"
#import "DetailViewManager.h"

@interface ProductViewController : UITableViewController <SFRestDelegate,SubstitutableDetailViewController>
{
    
    
    NSMutableArray *dataRows;
    IBOutlet UITableView *tableView;
}

/// Things for IB
@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;

/// SubstitutableDetailViewController
@property (nonatomic, retain) UIBarButtonItem *navigationPaneBarButtonItem;
@property (nonatomic, retain) IBOutlet UILabel *titleLabel;


@property (nonatomic, strong) NSArray *dataRows;
@property (nonatomic, copy) NSString *sfdcObject;
@end


