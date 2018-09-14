//
//  PaypalPaymentService.m
//  Payments
//
//  Created by yoshizawarei on 2018/09/14.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void) processPaymentAmount: (NSInteger) randomDollar {
    NSLog(@"Paypal processed amount $%ld", randomDollar);
}

//- (BOOL) canProcessPayment {
//    int rand = arc4random_uniform(1);
//    if (rand == 0) {
//        return NO;
//    } else {
//        return YES;
//    }
//}

@end
