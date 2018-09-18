//
//  Person.h
//  ARCDemo
//
//  Created by yoshizawarei on 2018/09/18.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apartment.h"

@interface Person : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, weak) Apartment *apartment;
- (instancetype)initWithNama: (NSString *) name;

@end
