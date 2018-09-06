//
//  Student.h
//  Lab2
//
//  Created by yoshizawarei on 2018/09/05.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
// define public properties
// define public methods
- (instancetype)initWithId: (int) identification
                            andName: (NSString *) name
                            andCountry: (NSString *) country;

@property (nonatomic, assign) int identification;
@property (nonatomic, assign) NSString *name;
@property (nonatomic, assign) NSString *country;

@end

