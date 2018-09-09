//
//  ContactList.h
//  Lab4
//
//  Created by yoshizawarei on 2018/09/07.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contactList;

- (void) addContact: (Contact *) newContact;
- (NSMutableArray *) showContactDetails: (int) id;
- (NSUInteger) count;
- (void) preventDuplicate: (NSString *)email;

@end
