//
//  PaymentGateway.h
//  Payments
//
//  Created by yoshizawarei on 2018/09/14.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate<NSObject>
- (void) processPaymentAmount: (NSInteger) randomDollar;
- (BOOL) canProcessPayment; 
@end


@interface PaymentGateway : NSObject

@property(nonatomic,weak)id<PaymentDelegate> delegate;
- (void) processPaymentAmount: (NSInteger) randomDollar;

@end
