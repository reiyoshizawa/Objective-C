//
//  main.m
//  Payments
//
//  Created by yoshizawarei on 2018/09/14.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int randomDollar = arc4random_uniform(900) + 100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", randomDollar);
        char input[10];
        fgets(input, 10, stdin);
        int i = atoi(input);
        
        PaymentGateway *payment = [PaymentGateway new];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        ApplePaymentService *apple = [ApplePaymentService new];
        
        switch (i) {
            case 1:
                payment.delegate = paypal;
                break;
            case 2:
                payment.delegate = stripe;
                break;
            case 3:
                payment.delegate = amazon;
                break;
            case 4:
                payment.delegate = apple;
                break;
            default:
                break;
        }
        [payment processPaymentAmount:randomDollar];
    }
    return 0;
}
