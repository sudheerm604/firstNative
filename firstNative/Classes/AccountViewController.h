//
//  AccountViewController.h
//  firstNative
//
//  Created by sudheer mangalpady on 9/20/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SFRestAPI.h"
#import "SFRestRequest.h"

@interface AccountViewController : UITableViewController <SFRestDelegate>
{
    

    NSMutableArray *dataRows;
    IBOutlet UITableView *tableView;
}
@property (nonatomic, strong) NSArray *dataRows;
@property (nonatomic, copy) NSString *sfdcObject;
@end
