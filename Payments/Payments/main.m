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
        int randomDollar = arc4random_uniform(1001) + 100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", randomDollar);
        char input[10];
        fgets(input, 10, stdin);
        int i = atoi(input);
        
        PaymentGateway *payment = [PaymentGateway new];
//        [payment processPaymentAmount:randomDollar];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        ApplePaymentService *apple = [ApplePaymentService new];
        
        switch (i) {
            case 1:
                payment.delegate = paypal;
                [paypal processPaymentAmount:randomDollar];
                break;
            case 2:
                payment.delegate = stripe;
                [stripe processPaymentAmount:randomDollar];
                break;
            case 3:
                payment.delegate = amazon;
                [amazon processPaymentAmount:randomDollar];
                break;
            case 4:
                payment.delegate = apple;
                [apple processPaymentAmount:randomDollar];
                break;
            default:
                break;
        }
    }
    return 0;
}
