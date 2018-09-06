//
//  Student.m
//  Lab2
//
//  Created by yoshizawarei on 2018/09/05.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "Student.h"
// Class: User-defined type (templete)
// - properties (attribute) (public, private)
// - methods (behaivors)

@interface Student()

@end

@implementation Student 
// implement methods
- (instancetype)initWithId: (int) identification
                   andName: (NSString *) name
                andCountry: (NSString *) country
{
    self = [super init];
    if (self) {
        _identification = identification;
        _name = name;
        _country = country;
    }
    return self;
}

@end



