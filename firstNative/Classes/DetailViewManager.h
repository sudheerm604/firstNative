//
//  DetailViewManager.h
//  firstNative
//
//  Created by sudheer mangalpady on 9/24/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SubstitutableDetailViewController
@property (nonatomic, retain) UIBarButtonItem *navigationPaneBarButtonItem;
@end

@interface DetailViewManager : NSObject <UISplitViewControllerDelegate>

/// Things for IB
// The split view this class will be managing.
@property (nonatomic, retain) IBOutlet UISplitViewController *splitViewController;

// The presently displayed detail view controller.  This is modified by the various
// view controllers in the navigation pane of the split view controller.
@property (nonatomic, assign) IBOutlet UIViewController<SubstitutableDetailViewController> *detailViewController;

@end

