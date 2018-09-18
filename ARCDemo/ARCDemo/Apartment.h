//
//  Apartment.h
//  ARCDemo
//
//  Created by yoshizawarei on 2018/09/18.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Apartment : NSObject

@property (nonatomic, strong) NSString *unit;
@property (nonatomic, weak) Person *tenant;
- (instancetype)initWithUnit: (NSString *) unit;

@end
