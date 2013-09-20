//
//  AccountsStore.h
//  firstNative
//
//  Created by sudheer mangalpady on 9/19/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Account;

@interface AccountsStore : NSObject
{
    NSMutableArray *allAccounts;
}

+ (AccountsStore *) sharedAccountStore;
- (NSArray *) allAccounts;
- (void) addAccount:(Account *)a;
@end


