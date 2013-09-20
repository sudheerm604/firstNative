//
//  AccountsStore.m
//  firstNative
//
//  Created by sudheer mangalpady on 9/19/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import "AccountsStore.h"
#import "Account.h"

@implementation AccountsStore


- (id)init
{
    self = [super init];
    if (self) {
        allAccounts = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (AccountsStore *) sharedAccountStore
{
    static AccountsStore * sharedAccountStore = nil;
    if (!sharedAccountStore)
        sharedAccountStore  = [[super allocWithZone:nil] init];
    return sharedAccountStore;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedAccountStore];
}

- (NSArray *)allAccounts{
    return allAccounts;
}

- (void) addAccount:(Account *)a
{
    [allAccounts addObject:a];
}

@end
