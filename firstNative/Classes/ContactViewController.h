//
//  ContactViewController.h
//  firstNative
//
//  Created by sudheer mangalpady on 9/19/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SFRestAPI.h"


@interface ContactViewController : UITableViewController <SFRestDelegate>
{
    
    NSMutableArray *dataRows;
    IBOutlet UITableView *tableView;
    
}

@property (nonatomic, strong) NSArray *dataRows;
@property (nonatomic, copy) NSString *sfdcObject;

@end
