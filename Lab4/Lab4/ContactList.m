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
    [_contactList addObject: newContact];
}

- (void) showContactDetails: (int) id {
    @try {
        // If a contact with that index/id is found, display their details
        NSMutableArray *result = [_contactList objectAtIndex: id];
        NSLog(@"\n%@", result);
    }
    @catch (NSException *exception) {
        // If the contact cannot be found, display a "not found" message.
        NSLog(@"\nnot found");
    }
}

- (void) printHistory: (NSMutableArray *) input {
    NSMutableArray *reversedArray = [NSMutableArray new];
    for (id value in [input reverseObjectEnumerator]) {
        [reversedArray addObject:value];
    }
    
    NSUInteger cnt = [reversedArray count];
    if (cnt < 2) {
        NSLog(@"\n%@", [reversedArray objectAtIndex:0]);
    } else if (cnt < 3) {
        NSLog(@"\n%@ \n%@", [reversedArray objectAtIndex:0], [reversedArray objectAtIndex:1]);
    } else {
        NSLog(@"\n%@ \n%@ \n%@", [reversedArray objectAtIndex:0], [reversedArray objectAtIndex:1], [reversedArray objectAtIndex:2]);
    }
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

