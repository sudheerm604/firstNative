//
//  PricingViewController.h
//  firstNative
//
//  Created by sudheer mangalpady on 9/20/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PricingViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *telephoneNumber;
- (IBAction)qualifyByTN:(id)sender;
- (IBAction)clearTN:(id)sender;
- (IBAction)qualifyByAddress:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *addressZIP;
- (IBAction)clearAddress:(id)sender;

@end
