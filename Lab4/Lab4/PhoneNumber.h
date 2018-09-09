//
//  PhoneNumber.h
//  Lab4
//
//  Created by yoshizawarei on 2018/09/09.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhoneNumber : NSObject

@property (nonatomic, strong) NSString *label;
@property (nonatomic, strong) NSString *number;

- (instancetype)initWithLabel : (NSString *) label
                    andNumber : (NSString *) number;

@end
