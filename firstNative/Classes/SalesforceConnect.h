//
//  SalesforceConnect.h
//  firstNative
//
//  Created by sudheer mangalpady on 9/19/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SFRestAPI.h"

@interface SalesforceConnect : NSObject <SFRestDelegate> 
@property (nonatomic, copy) NSArray *sfdcData;
@property (nonatomic)BOOL dataLoaded;


- (void)dispatchRequest:(NSString *) sqlRequest;



@end
