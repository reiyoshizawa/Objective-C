//
//  StripePaymentService.m
//  Payments
//
//  Created by yoshizawarei on 2018/09/14.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void) processPaymentAmount: (NSInteger) randomDollar {
    NSLog(@"Stripe processed amount $%ld", randomDollar);
}

- (BOOL) canProcessPayment {
    int rand = arc4random_uniform(2);
    if (rand == 0) {
        return NO;
    } else {
        return YES;
    }
}

@end
