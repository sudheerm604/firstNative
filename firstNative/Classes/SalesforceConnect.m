//
//  SalesforceConnect.m
//  firstNative
//
//  Created by sudheer mangalpady on 9/19/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import "SalesforceConnect.h"

@implementation SalesforceConnect
@synthesize sfdcData, dataLoaded;

- (id)init
{
    self = [super init];
    if (self) {
        sfdcData = [[NSArray alloc] init];
        self.dataLoaded = NO;
    }
    return self;
}



- (void)dispatchRequest:(NSString *)sqlRequest
{
    SFRestRequest *request = [[SFRestAPI sharedInstance] requestForQuery:sqlRequest];
    [[SFRestAPI sharedInstance] send:request delegate:self];
}

#pragma mark - SFRestAPIDelegate

- (void)request:(SFRestRequest *)request didLoadResponse:(id)jsonResponse {
    NSArray *records = [jsonResponse objectForKey:@"records"];
    NSLog(@"request:didLoadResponse: #records: %d", records.count);

    self.sfdcData = records;
    self.dataLoaded = YES;
    NSLog(@"sfdcData =%d",[sfdcData count]);
}


- (void)request:(SFRestRequest*)request didFailLoadWithError:(NSError*)error {
    NSLog(@"request:didFailLoadWithError: %@", error);
    //add your failed error handling here
}

- (void)requestDidCancelLoad:(SFRestRequest *)request {
    NSLog(@"requestDidCancelLoad: %@", request);
    //add your failed error handling here
}

- (void)requestDidTimeout:(SFRestRequest *)request {
    NSLog(@"requestDidTimeout: %@", request);
    //add your failed error handling here
}



@end
