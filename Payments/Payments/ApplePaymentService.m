//
//  ApplePaymentService.m
//  Payments
//
//  Created by yoshizawarei on 2018/09/14.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void) processPaymentAmount: (NSInteger) randomDollar {
    NSLog(@"Apple processed amount $%ld", randomDollar);
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
