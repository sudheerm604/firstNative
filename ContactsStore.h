//
//  ContactsStore.h
//  firstNative
//
//  Created by sudheer mangalpady on 9/19/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Contact;

@interface ContactsStore : NSObject
{
    NSMutableArray *allContacts;
}

+ (ContactsStore *) sharedContactsStore;
- (NSArray *) allContacts;
- (void) addContacts:(Contact *)a;
- (void) addAllContacts: (NSArray *) all;


@end
