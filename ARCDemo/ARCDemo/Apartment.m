//
//  Apartment.m
//  ARCDemo
//
//  Created by yoshizawarei on 2018/09/18.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "Apartment.h"

@implementation Apartment

- (instancetype)initWithUnit: (NSString *) unit
{
    self = [super init];
    if (self) {
        _unit = unit;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Apartment-%@ is destroyed.", _unit);
}

@end
