//
//  PhoneNumber.m
//  Lab4
//
//  Created by yoshizawarei on 2018/09/09.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "PhoneNumber.h"

@implementation PhoneNumber

- (instancetype)initWithLabel : (NSString *) label
                    andNumber : (NSString *) number
{
    self = [super init];
    if (self) {
        _label = label;
        _number = number;
    }
    return self;
}

@end
