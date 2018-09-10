//
//  PhoneNumber.h
//  Lab4
//
//  Created by yoshizawarei on 2018/09/09.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhoneNumber : NSObject

@property (nonatomic, strong) NSString *phoneLabel;
@property (nonatomic, strong) NSString *phoneNumber;

- (instancetype)initWithPhoneLabel: (NSString *) phoneLabel
                    andPhoneNumber: (NSString *) phoneNumber;



@end
