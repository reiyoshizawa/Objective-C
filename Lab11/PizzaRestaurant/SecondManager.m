//
//  SecondManager.m
//  PizzaRestaurant
//
//  Created by yoshizawarei on 2018/09/17.
//  Copyright © 2018年 Lighthouse Labs. All rights reserved.
//

#import "SecondManager.h"

@implementation SecondManager

- (BOOL)kitchen:(Kitchen *)kitchen
shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return true;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return true;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Bon apetito!");
    DeliveryService *deliveryService = [DeliveryService new];
    self.deliveryService = deliveryService;
    [self.deliveryService deliverPizza:pizza];
}

@end
