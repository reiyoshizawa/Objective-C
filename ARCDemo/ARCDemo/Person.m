//
//  Person.m
//  ARCDemo
//
//  Created by yoshizawarei on 2018/09/18.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithNama: (NSString *) name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"%@ is dead.", _name);
}

@end
