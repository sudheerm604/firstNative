//
//  ContactsStore.m
//  firstNative
//
//  Created by sudheer mangalpady on 9/19/13.
//  Copyright (c) 2013 Centurylink. All rights reserved.
//

#import "ContactsStore.h"
#import "Contact.h"

@implementation ContactsStore

- (id)init
{
    self = [super init];
    if (self) {
        allContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (ContactsStore *) sharedContactsStore
{
    static ContactsStore * sharedContactsStore = nil;
    if (!sharedContactsStore)
        sharedContactsStore  = [[super allocWithZone:nil] init];
    return sharedContactsStore;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedContactsStore];
}

- (NSArray *)allContacts{
    return allContacts;
}

- (void) addContacts:(Contact *)a
{
    [allContacts addObject:a];
}

- (void) addAllContacts: (NSArray *) all{
    [allContacts addObjectsFromArray:all];
}


@end
