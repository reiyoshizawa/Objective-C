//
//  Manager.m
//  PizzaRestaurant
//
//  Created by yoshizawarei on 2018/09/17.
//  Copyright © 2018年 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (BOOL)kitchen:(Kitchen *)kitchen
shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]) {
        return false;
    } else {
        return true;
    }
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return false;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    
}

@end
