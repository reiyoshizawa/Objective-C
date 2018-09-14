//
//  PaymentGateway.m
//  Payments
//
//  Created by yoshizawarei on 2018/09/14.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount: (NSInteger) randomDollar{
    [self.delegate processPaymentAmount:randomDollar];
}

@end
