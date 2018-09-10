//
//  Contact.m
//  Lab4
//
//  Created by yoshizawarei on 2018/09/07.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "Contact.h"
#import "ContactList.h"
#import "PhoneNumber.h"

@implementation Contact

- (instancetype)initWithName: (NSString *) name
                    andEmail: (NSString *) email
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Name: %@, Email: %@", self.name, self.email];
}

@end
