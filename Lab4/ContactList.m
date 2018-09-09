//
//  ContactList.m
//  Lab4
//
//  Created by yoshizawarei on 2018/09/07.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [NSMutableArray new];
        
    }
    return self;
}

- (void) addContact: (Contact *) newContact {
    [_contactList addObject:  newContact];
}

- (NSMutableArray *) showContactDetails: (int) id {
    NSMutableArray *result = [_contactList objectAtIndex: id];
    return result;
}

- (NSUInteger) count {
    NSUInteger count = [_contactList count];
    return count;
}

- (void) preventDuplicate: (NSString *) email{
    NSSet *set = [[NSSet alloc] init];
    if ([_contactList containsObject:email]) {
        NSLog(@"the contact already exists and cannot be created");
    }
}

- (NSMutableArray *) searchContact: (NSString *) searchTerm{
    [_contactList]
    NSMutableArray *result = [_contactList objectAtIndex: id];
    return result;
}

- (NSString *)description
{
    NSMutableString *result = [NSMutableString new];
    int count = 0;
    for (Contact *contact in _contactList) {
        NSString *contactStr = [NSString stringWithFormat:@"%d: %@\n", count, contact];
        count++;
        [result appendString:contactStr];
    }
    
    return result;
}

@end
