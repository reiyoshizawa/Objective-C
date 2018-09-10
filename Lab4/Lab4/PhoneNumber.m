//
//  PhoneNumber.m
//  Lab4
//
//  Created by yoshizawarei on 2018/09/09.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "PhoneNumber.h"

@implementation PhoneNumber

- (instancetype)initWithPhoneLabel: (NSString *) phoneLabel
                    andPhoneNumber: (NSString *) phoneNumber
{
    self = [super init];
    if (self) {
        _phoneLabel = phoneLabel;
        _phoneNumber = phoneNumber;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@, %@", self.phoneLabel, self.phoneNumber];
}

@end
