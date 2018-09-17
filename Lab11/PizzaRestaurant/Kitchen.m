//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza *pizza = [[Pizza alloc]initWithSize:size toppings:toppings];
    if (![self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        return nil;
    } else {
        if ([self.delegate kitchenShouldUpgradeOrder:self]) {
            pizza.self.size = large;
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:pizza];
            }
            return pizza;
        } else {
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:pizza];
            }
            return pizza;
        }
    }
    return nil;
}

@end
